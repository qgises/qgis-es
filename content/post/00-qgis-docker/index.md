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

En mi caso, que utilizo de GNU/Linux como sistema operativo, concretamente uso como distribución [Ubuntu][3] o [Debian][4], dependiendo de la máquina, uno de los *problemas* que me encontraba si quería probar alguna versión distinta de QGIS era que debía de sustituir la que tenía mi sistema o, durante mucho tiempo lo he estado haciendo usando una máquina virtual que montaba *ex profeso* en [VirtualBox][5].

[3]:https://es.wikipedia.org/wiki/Ubuntu
[4]:https://es.wikipedia.org/wiki/Debian
[5]:https://es.wikipedia.org/wiki/VirtualBox

Con la llegada, o más bien, mi comienzo en el uso, de Docker, mi perspectiva para la prueba de diferentes versiones de QGIS cambió al poder *mover* la virtualización de [VirtualBox][5] que hacía a una imagen de este sistema de [*virtualización ligera*][1]. A continuación explico los principios básicos para hacer correr contenedores Docker con una versión personalizada de nuestro SIG de escritorio libre favorito.

![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/QGIS_logo%2C_2017.svg/320px-QGIS_logo%2C_2017.svg.png)

![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/320px-Docker_%28container_engine%29_logo.svg.png)


# Notas previas

El código que muestro a continuación está en proceso de mejora, **NO me hago responsable de cualquier perjuicio que pueda ocasionar por por su uso en entornos de producción**.

Cualquier mejora y a portación es bienvenida a través de mi repositorio personal en [gitlab](https://gitlab.com/msevilla00/qgisdev_docker).

La imagen de docker resultante del siguiente proceso tiene un __tamaño de 3.1 GB__, tenlo presente a la hora de crear o descargar la imagen y correr el container final.

Si quieres una imagen de QGIS generada desde la compilación del código del programa te recomiendo que le eches un vistazo a las imágenes oficiales del proyecto QGIS en [Docker Hub](https://hub.docker.com/r/qgis/qgis/) o en el [repo oficial de GitHub](https://github.com/qgis/QGIS/tree/master/.docker).

La aproximación que sigo en este documento es la de recrear un sistema operativo básico en Ubuntu o Debian y sobre él instalar la versión de QGIS que nos interesa. Como podrás leer [al final del documento](#reflexiones-finales) es totalmente mejorable y lo he tenido presente de cara a desarrollos futuros.

El código que se presenta a continuación está bajo licencia [Creative Commons Reconocimiento Compartir igual 4.0](https://creativecommons.org/licenses/by-sa/4.0/legalcode)

# Montando la imagen de QGIS

Como he comentado [más arriba](#notas-previas) se ha trabajado sobre una imagen de [Ubuntu LTS (focal/ 20.04)](https://hub.docker.com/_/ubuntu) a la que se le han añadido los repositorios de QGIS (originalmente para la versión de desarrollo) y se le han instalado los programas requeridos: [QGIS], [GRASS GIS][6] y [SAGA GIS][7].

[6]:https://grass.osgeo.org/
[7]:http://www.saga-gis.org/en/index.html



Para poder  incluido diversos servicios que nos permiten correr QGIS (o cualquier otro programa en su el servicio SSH a través del cual, podremos correr QGIS en el _host_.

Comandos incluidos en el contenedor de pruebas original:

```bash
# instalar paquetes necesarios
apt-get install -y wget gpg ssh nano 

# importar clave de repo QGIS
apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3

# añadir repo de QGIS
echo -e "# QGIS Latest Release\ndeb http://qgis.org/ubuntu focal main" \
    > /etc/apt/sources.list.d/qgis-latest.list

# instalar QGIS
apt install qgis qgis-plugin-grass

# configurar servidor ssh para que corran las X fuera del contenedor
# configurar sshd_config con `X11UseLocalhost no`
sed -i 's/\#X11UseLocalhost yes/X11UseLocalhost no/g' /etc/ssh/sshd_config

# arrancar ssh (esto no funciona en el container, desactivado por defecto)
service ssh start

# crear usuario qgis
    # esto no funciona, la contraseña ha de está encriptada
#useradd -u 12345 -g users -d /home/username -s /bin/bash -p '12345' username

    # es mejor usar `useradd` en vez de `adduser` que es interactivo para ñadir usuario. 
useradd --create-home --shell /bin/bash qgis

    # añadir contraseña de usuario -- NO FUNCIONA
echo -n 'qgis:qgis2020' | chpasswd

# crear directorio de datos del usuario qgis
mkdir -p /home/qgis/data
chown 777 /home/qgis/data

```

Para construir la imagen, lanzar `docker build` sobre directorio:

```bash
# versión de desarrollo
docker build -t qgisdev:v0 -f dev.dockerfile .

# versión LR
docker build -t qgisdev:v0 -f lxqt_lr.dockerfile .
```

### Corriendo QGIS vía `ssh -X`

Para correr container desde imagen, lanzar `docker run`:

```bash
docker run --rm -ti \
    --name qgisdev \
    -v /tmp/data:/home/qgis/data \
    msevilla00/qgis_dev
```

Y una vez que se está corriendo el container, sobre la consola se puede arrancar ssh, ver qué IP tenemos:

```bash
service ssh start
hostname -I
```

Y nos podemos conectarnos desde el host a través de ssh del siguiente modo:

`ssh qgis@172.17.0.2 -X` y le damos la contraseña `qgis2020`

### Corriendo QGIS en el host vía `supervisor`

Los últimos cambios que he realizado (no documentado más arriba) ha sido instalar `supervisor` para poder correr QGIS en las X del host copiando el método que hay en el _dockerfile_ oficial.

REVISAR: [docker-cookbooks/Dockerfile at master · Krijger/docker-cookbooks · GitHub](https://github.com/Krijger/docker-cookbooks/blob/master/supervisor/Dockerfile)

```bash
# faltan de incluir los últimos comandos
sudo apt-get install xvfb supervisor

# copiada la configuración de imagen de QGIS oficial
```

Ahora arranca así (como la imagen oficial):

```bash
xhost +
docker run --rm -ti \
    --name qgisdev \
    -v /tmp/data:/home/qgis/data \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    msevilla00/qgis_dev qgis
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

- - -

## Reflexiones finales

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

