[![Netlify Status](https://api.netlify.com/api/v1/badges/5b49ad89-1104-405a-b500-91b2a082b9f7/deploy-status)](https://app.netlify.com/sites/qgises/deploys)

# Web de QGIS.es

Este es el repositorio de la página web de la Asociación QGIS España disponible en [qgis.es](https://www.qgis.es), realizada con el generador de contenidos [HUGO](https://gohugo.io) y  desplegada automáticamente a través de [netlify](https://netlify.com).

Buena parte de la organización y el proceso de edición de la página web está recogida en la propia página web en el apartado de [manual de uso](https://www.qgis.es/manuales/manual_web/).

# Editar la web en local

Para poder trabajar con el repositorio en local,subir las modificaciones a github incluso si se quiere recrear la web con HUGO se comenta a continuación el proceso:

## Descarga del repositorio

Hay que tener presente que la página web se genera con el repositorio de github y los submódulos para HUGO.

Opción A: (1 paso)

1. Clonar el repositorio junto con los submódulos
```
git clone git@github.com:qgises/qgis-es.git --recurse-submodules
```

Opción B (2 pasos):

1. Clonar repositorio:
```
git clone git@github.com:qgises/qgis-es.git
```
2. Descargar contenido del theme (es un submódulo)
```
git submodule update --init --recursive
```

## Editar la página web

Por la naturaleza propia de la tecnología usada en el desarrollo de esta página web (HUGO) la edición de contenidos se realiza en la carpeta `content` como se indica en el [manual](https://www.qgis.es/manuales/manual_web/). 

## Generar/visualizar la página web en local

Aunque la página web se genera automáticamente vía Netlify si queremos tenerla en local o de cara a un futuro para no depender de Netlify, se puede correr y servir corriendo HUGO.

Más instrucciones en la misma [página de HUGO](https://gohugo.io/documentation/) 

<!-- en Netlify está configurada la versión 0.70.0 de HUGO pero funciona con la 0.74 -->

Este es un ejemplo de cómo recrear la página web en local con una imagen docker de HUGO:

```bash
docker run --rm -it -v $PWD:/src klakegg/hugo:0.70.0-ext
```

Si además queremos verla debemos servirla en un puerto de nuestro equipo:

```bash
docker run --rm -it -v $PWD:/src -p 1313:1313 klakegg/hugo:0.70.0-ext serve
```