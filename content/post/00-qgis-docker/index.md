---
title: Usando QGIS vía Docker
subtitle: O cómo poder correr múltiples instancias y/o versiones de nuestro programa favorito a la vez usando Docker
date: 2020-12-25T00:00:00.000Z
summary: Explicación de cómo correr QGIS componiendo una imagen de Docker
draft: true
featured: false
authors:
  - miguel-sevilla
tags:
  - QGIS
  - Docker
categories:
  - Documentación
image:
  filename: featured
  focal_point: Smart
  preview_only: false
---

# Introducción

La [virtualización por contenedores o a nivel de sistema operativo][1] usando [Docker][2] es una técnica que se ha extendido notablemente en los últimos años por su flexibilidad y sencillez para desplegar servicios y aplicaciones.

[1]:https://es.wikipedia.org/wiki/Virtualizaci%C3%B3n_a_nivel_de_sistema_operativo
[2]:https://es.wikipedia.org/wiki/Docker_(software)

En mi caso, que uso GNU/Linux como sistema operativo, concretamente [Ubuntu][3] o [Debian][4], dependiendo de la máquina, uno de los *problemas* que me encontraba si quería probar alguna versión distinta de QGIS era que debía de sustituir la que ya tenía instalada en mi sistema. También, durante mucho tiempo lo que he estado haciendo es usar una máquina virtual que montaba *ex profeso* en [VirtualBox][5].

[3]:https://es.wikipedia.org/wiki/Ubuntu
[4]:https://es.wikipedia.org/wiki/Debian
[5]:https://es.wikipedia.org/wiki/VirtualBox

Con la llegada, o más bien, mi comienzo en el uso, de Docker, mi perspectiva para la prueba de diferentes versiones de QGIS cambió al poder *mover* la virtualización de [VirtualBox][5] a una imagen de este sistema de [*virtualización ligera*][1]. En este post explico los principios básicos para hacer correr contenedores Docker con una versión personalizada de nuestro SIG de escritorio libre favorito en base a las notas que tengo en [mi repositorio de gitlab][6].

[6]: https://gitlab.com/msevilla00/qgis_docker

<br>

![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/QGIS_logo%2C_2017.svg/320px-QGIS_logo%2C_2017.svg.png)

![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/320px-Docker_%28container_engine%29_logo.svg.png)

<br>

# Advertencia

El código que muestro a continuación está en proceso de mejora, **no me hago responsable de cualquier perjuicio que pueda ocasionar por su uso en entornos de producción**. Sin menoscabo de lo anterior puedo afirmar que todas las pruebas que he hecho con las imágenes que se comentan a continuación han sido satisfactorias.

Cualquier mejora y a portación es bienvenida a través de las [_issues_ de mi repositorio en gitlab](https://gitlab.com/msevilla00/qgis_docker/issues).

Las imágenes de docker resultantes del siguiente proceso tiene un __elevado tamaño__ (entre 2,6 y más de 3 GB) por lo que has de tenerlo presente a la hora de crear o descargarlas para correr el container final.

Si quieres una imagen de QGIS generada desde la compilación del código del programa te recomiendo que le eches un vistazo a las imágenes oficiales del proyecto QGIS en [Docker Hub](https://hub.docker.com/r/qgis/qgis/) o en el [repo oficial de GitHub](https://github.com/qgis/QGIS/tree/master/.docker).

La aproximación que sigo en este documento es la de recrear un sistema operativo básico en Debian y sobre él instalar la versión de QGIS que nos interesa. Como podrás leer [al final del documento](#reflexiones-finales) es totalmente mejorable y lo he tenido presente de cara a desarrollos futuros.

El código que se presenta a continuación está bajo licencia [Creative Commons Reconocimiento Compartir igual 4.0](https://creativecommons.org/licenses/by-sa/4.0/legalcode)

# Directo al asunto...

Si no te interesan los aspectos técnicos que desarrollo más abajo y **lo único que quieres es correr QGIS desde Docker sin más dilación** te pego aquí el código para correr el programa en sus tres versiones; (1) _master/dev_ o de desarrollo, (2) _latest release_, última estable, y (3) _long term release_, versión de largo recorrido (la indicada para entornos de producción).

Si estas en GNU/Linux (lo he probado en Ubuntu y Debian) y tienes instalado Docker puedes lanzar directamente cualquiera de estos comandos sobre la carpeta que contenga los datos que vas a usar con cualquiera de los tres comandos que te pego a continuación:

```bash
# (1) para versión en desarrollo; QGIS 3.19 (master)
xhost + &
docker run --rm -it --name qgis_dev \
   -v $PWD:/root -v /tmp/.X11-unix:/tmp/.X11-unix \
   -e DISPLAY=unix$DISPLAY \
   msevilla00/qgis:dev qgis

# (2) para última versión; QGIS 3.18.0 (LT)
xhost + &
docker run --rm -it --name qgis_latest \
   -v $PWD:/root -v /tmp/.X11-unix:/tmp/.X11-unix \
   -e DISPLAY=unix$DISPLAY \
   msevilla00/qgis:latest qgis

# (3) para versión estable de largo recorrido; QGIS 3.16.4 (LTR)
xhost + &
docker run --rm -it --name qgis_ltr \
   -v $PWD:/root -v /tmp/.X11-unix:/tmp/.X11-unix \
   -e DISPLAY=unix$DISPLAY \
   msevilla00/qgis:ltr qgis
```

![Captura de la versión en desarrollo de QGIS corriendo con Docker y el plugin de GRASS activado](qgis_dev_docker.png)


Las imágenes, la primera vez, se descargarán de [mi usuario en DockerHub](https://hub.docker.com/u/msevilla00), se creará un contener temporal y arrancará QGIS en la versión que se haya seleccionado y los datos estarán en la carpeta `Home` del programa.

# Configuración de las imágenes de Docker

Las imágenes de Docker que se han usado están montadas sobre la sobre una imagen de [Debian 10, buster](https://hub.docker.com/_/debian) a la que, como si de un sistema operativo sencillo y al uso se tratara, se le han añadido los repositorios de QGIS y se le han instalado los programas requeridos: QGIS más [GRASS GIS][6] y [SAGA GIS][7].

[6]:https://grass.osgeo.org/
[7]:http://www.saga-gis.org/en/index.html

## Comandos de instalación de QGIS en Debian/Ubuntu

En realidad lo que hice fue seguir los propios comandos que ya tengo establecidos para cualquier instalación que realizo en mis equipos , que tengo recogidos en [mi repositorio con scripts de instalación en gitlab][8] y que resumo y comento a continuación.

[8]:https://gitlab.com/msevilla00/linux_scripts

```bash
# instalar paquetes previos necesarios
apt-get install -y apt-utils curl gpg keyboard-configuration \
 nano software-properties-common ssh unzip wget

# instalar la clave de repositorio de QGIS
wget -qO - https://qgis.org/downloads/qgis-2020.gpg.key | \
  gpg --no-default-keyring --keyring \
  gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import
chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg

# añadir repositorio de QGIS (en este caso el de la varsión LR)
echo "deb http://qgis.org/debian buster main" \
    > /etc/apt/sources.list.d/qgis-latest.list

# instalar QGIS
apt install -y qgis qgis-plugin-grass

# instalar GRASS y SAGA
apt install -y grass saga
```
Por la naturaleza y las particularidades de las imágenes de Docker, hay que tener presente que se ha de incorporar un entorno de ventanas al sistema y es necesarios algunos otros paquetes

```bash
# instalación de otros paquetes adicionales
apt install -y lxqt-core supervisor xvfb 
```

## Archivos del `dockerfile` y creación de una imagen personal de Docker

El anterior conjunto de instrucciones y alguna otra adicional se han incluido en tres archivos de configuración para la construcción de imágenes de Docker, estos son, tres archivos de tipo `dockerfile`.

Aunque es recomendable echarle una ojeada a la [documentación oficial de Docker][9], sobre cómo trabajar con archivos del tipo `dockerfile`, este tipo de archivos permiten establecer las instrucciones (imagen de partida, instrucciones de instalación, variables y otras) para construir una imagen de docker.

[9]:https://docs.docker.com/engine/reference/builder/

Para el caso que nos ocupan se han generado estos tres archivos:

- [qgis_dev_buster.dockerfile](qgis_dev_buster.dockerfile) - para versión de desarrollo
- [qgis_lr_buster.dockerfile](qgis_lr_buster.dockerfile) - para versión de largo recorrido
- [qgis_ltr_buster.dockerfile](qgis_ltr_buster.dockerfile) - para última versión estable

Sobre los archivos anteriores y con el comando `docker build` sobre directorio en el que se encuentren estos archivos se podría construir cada una de las imágenes siguiendo el ejemplo, para la versión en desarrollo que se muestra a continuación:

```bash
# versión de desarrollo; QGIS 3.19 (master)
docker build -t qgis:dev -f qgis_dev_buster.dockerfile .
```

## Corriendo QGIS desde la imagen creada

Una vez que hemos construido nuestra imagen ya podemos ponerla en funcionamiento generando un contenedor temporal que lance nuestra aplicación de referencia con el comando `docker run`.

Ahora arranca así (como la imagen oficial):

```bash
xhost +
docker run --rm -ti \
    --name qgisdev \
    -v /tmp/data:/home/qgis/data \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    qgis_dev qgis
```
Se puede incluir volúmenes para guardar la configuración de los perfiles de QGIS o el directorio de trabajo.

Una vez actualizada la imagen (revisar el nombre que le hemos dado a la imagen) podemos correr QGIS sobre un directorio de datos determinado con este comando:

```bash
docker run --rm -ti --name qgis_lxqt_lr \
     -v $PWD:/home/qgis/data            \
     -v /tmp/.X11-unix:/tmp/.X11-unix   \
     -e DISPLAY=unix$DISPLAY            \
    qgisdev:v0 qgis
```

![Caprura de pantalla con las tres versiones de QGIS corriendo al mismo tiempo sobre un mismo escritorio en GNU/Linux](qgis_versiones_docker.png)

# Reflexiones finales

Mejoras a incluir 

La idea es ir mejorando la imagen de base incorporándo diferentes opciones como puede ser que se instale la versión LTR.

[ ] Cambiar instalación de gnome-shell (se instala por defecto) para aligerar imagen

[x] Mover carpeta de perfil fuera del container con un volúmen.

[x] Correr QGIS directamente en el host (vía xvfb + supervisor )

[ ] Opción LTR (ya en código de Dockerfile)

[ ] Configurar adecuadamente volúmenes para salvar los perfiles y directorio de trabajo

[ ] Añadir complementos de interés: SAGA? GDAL últimas versiones?




- - - 

- - - 

## Notas sobre la imagen oficial de QGIS

Nota de cómo usar las imágenes oficiales de QGIS desde [sus notas en el repo de GitHub](https://github.com/qgis/QGIS/tree/master/.docker)

### Corriendo container de QGIS

- última versión; de desarrollo; imagen 7 GB

```bash
xhost +
docker run --rm -it --name qgis \
    -v /tmp/.X11-unix:/tmp/.X11-unix  \
    -e DISPLAY=unix$DISPLAY \
    qgis/qgis:latest \
    qgis
```
Si queremos correr la versión 3.12 (imagen 5.6 GB) debemos usar la imagen `qgis/qgis:release-3_12_focal`

### Para mantener perfiles y opciones de manera persistente

Los archivos con los perfiles de la imagen oficial se guardan en `/root/.local/share/QGIS/QGIS3/profiles` del container por lo que podemos guardar la configuración si generamos un volumen en nuestro directorio.

Así mismo podemos incluir un volumen dirigido a los datos sobre los que trabajar pero debemos tener en cuenta que __los enlaces NO se verán__ en el container.

Con lo anterior quedaría el siguiente comando:

```bash
xhost +
docker run --rm -it --name qgis \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ~/.docker_volumes/qgis312:/root \
    -v ~/data:/data \
    -e DISPLAY=unix$DISPLAY \
    qgis/qgis:release-3_12_focal \
    qgis
```
Para versión de desarrollo se puede usar esta otra:

```bash
xhost +
docker run --rm -it --name qgis \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ~/.docker_volumes/qgisdev:/root \
    -v ~/data:/data \
    -e DISPLAY=unix$DISPLAY \
    qgis/qgis \
    qgis
```

