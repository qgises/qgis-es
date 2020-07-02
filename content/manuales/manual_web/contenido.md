---
title: Gestión de contenidos
linktitle: Generalidades
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  manual_web:
    parent: Contenido
    weight: -10

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---

Cuando queramos añadir o editar contenido deberemos hacerlo en únicamente en las carpetas siguientes: `/content` para el contenido y `/static` para el contenido multimedia (archivos, imágenes...), si bien será también habitual poder añadir imágenes o adjuntos como subcarpetas de contenido (leer más). 

{{% alert warning %}}
Únicamente deberemos editar contenido de estas dos carpetas (pudiendo crear subcarpetas si es necesario), de lo contrario el contenido no se visualizará en absoluto.
{{% /alert %}}

{{% alert note %}}
Tanto el contenido como los archivos multimedia los podremos editar de tres maneras diferentes, a elección de cada persona:

1. Directamente desde github, 
2. Localmente, usando git, 
3. Usando la interfaz web ([ver aquí]({{< ref "/manuales/manual_web/contenido-tipos.md#interfaz-de-administración" >}}))

Todos los métodos se basan en crear un commit que dispara una tarea para regenerar el contenido de la web.
{{% /alert %}}

## Contenido

Todo el contenido de la web se encuentra en las distintas subcarpetas de la carpeta `/content`. Hay dos tipos de carpetas, las de páginas (normalmente realizadas con widgets) y listados de tipos de contenido. Las primeras contienen, como mínimo, un archivo `index.md` y las segundas, como mínimo, un archivo`_index.md` y más archivos o subcarpetas. A su vez, cada tipo de contenido tiene una serie de campos específicos.

El contenido de la carpeta `/content` se estructura como sigue (es crucial mantener este orden, de lo contrario no se visualizará correctamente):

* `asociacion`: contiene el contenido de la url `asociacion`. Se trata de una página de contenido realizada con widgets. Hay distintos widgets y cada widget se ordena según su peso. Cuanto más elevado es el número, más "pesa" y queda más "abajo" de la página.
* `authors`: listado de todos los contenidos de tipo `author`. Usamos este tipo de contenido para los usuarios miembros de la asociación.
* `home`: contiene el contenido de la página de inicio. Se trata de una página de contenido realizada con widgets.
* `manuales`: un listado de la documentación que estás leyendo.
* `post`: listado de todos los contenidos de tipo `post` que se verán en el blog. Cada post deberá ser una subcarpeta de la misma, empezando por la fecha.
* `talk`: listado de todos los contenidos de tipo `talk` que se verán en el listado de eventos. Cada evento deberá ser una subcarpeta de la misma.
* `alta-socios.md`: se trata de una página sencilla para la url `alta-socios/` que contiene embebido el formulario de alta de la asociación.

## Multimedia

Todos los archivos multimedia (imágenes, documentos, vídeos...) que queramos enlazar desde nuestro contenido se encuentra en una de estas dos ubicaciones:

1. La carpeta `/static`
2. Dentro de la carpeta del contenido que estmos editando (al mismo nivel que el archivo `index.md` o en una subcarpeta.

La diferencia entre un método u otro es que mientras que los archivos de la carpeta `/static` pueden enlazarse desde cualquier contenido, los segundos únicamente se podrán enlazar desde el contenido que lo contiene. Como regla general, la recomendación es poner los archivos relativos a un contenido (post, proyecto, charla...) dentro de la subcarpeta del contenido al que hacen referencia, y únicamente pondremos archivos en la carpeta `/static` para archivos que deban utilizarse en más de una ocasión o bien para páginas especiales como la portada o la de la asociación.

## ¿Quien puede editar contenido?

Todo el contenido se encuentra alojado en un repositorio de git, por tanto para añadir nuevo contenido o editar el existente es necesario añadir o modificar archivos. Eso significa que **únicamente los usuarios con permiso de escritura en el repositorio podrán añadir o modificar contenidos**. Dicho esto, cualquier persona puede proponer cambios que deberán ser aprobados por algún administrador (esto es, alguien con permisos de escritura en el repo), a través de Pull Requests. También puede utilizarse la interfaz de administración para hacer eso mismo de forma más amigable y sin necesidad de saber crear pull requests.
