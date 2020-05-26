---
# Course title, summary, and position.
linktitle: Manual de uso y gestión de QGIS.es
summary: Manual para la gestión de contenido de la web.
weight: 1

# Page metadata.
title: Introducción
date: "2018-09-09T00:00:00Z"
lastmod: "2018-09-09T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.

# Add menu entry to sidebar.
# - name: Declare this menu item as a parent with ID `name`.
# - weight: Position of link in menu.
menu:
  example:
    name: Introducción
    weight: 1
---

Esta web está realizada con [Hugo](https://gohugo.io) y desplegada automáticamente a través de [netlify](https://netlify.com).
Hugo es un generador de webs estático: a partir de escribir contenido en `markdown` siguiendo unas directrices y de un sistema de menús y themes, Hugo, convierte el contenido en los archivos `html` necesarios para ser visualizados en cualquier navegador web. 

Este sistema tiene, entre otras, las ventajas siguientes:
  * **No necesita servidor:** al ser un sitio estático puede alojarse en cualquier repositorio de git, que, en nuestro caso, está alojado en [`https://github.com/montera34/qgis-es`](https://github.com/montera34/qgis-es).
  * **No puede ser hackeado** a través de ejecución de programas (porque no se ejecuta nada en servidor ni en cliente). A su vez, no es necesario realizar tareas de mantenimiento de seguridad del código (porque no hay código que pueda ejecutarse).
  * **Rapidez:** una vez generado el sitio, el sitio web carga muy rápido al no tener que mandar consultas al servidor. Además, configuraré el theme para que use técnicas de lazy loading de imágenes.
  * **No hace falta editar html/css:** el contenido se escribe en markdown.

Pero también algún inconveniente:

* No se puede realizar ningún tipode interacción servidor-cliente (al menos, sin recurrir a servicios externos)
* Los cambios no se visualizan de forma inmediata: desde que se añade un nuevo archivo o se modifica hasta que se ve en la web pueden tardar unos segundos o hasta 2 minutos, en función del contenido y la complejidad. Eso solo ocurre cuando se cambia el código fuente: una vez generado el html, la web se verá de forma instantánea, en función de la conexión del cliente.

En las páginas de este manual se detallan los pasos a seguir para instalar y gestionar el sitio web.

## Instalación

Opción A (2 pasos):

1. Clonar repositorio:

  ```shell
  git clone git@github.com:montera34/qgis-es.git
  ```

2. Descargar contenido del theme (es un submódulo)
```shell
git submodule update --init --recursive
```

Opción B: (one liner)

1. Clonar el repositorio junto con los submódulos
```shell
git clone --recurse-submodules
```

## Gestión de contenido

Todo el contenido se organiza en archivos de extensión `.md` ubicados en la carpeta `/content`. A su vez, dichos archivos siguen una estructura determinada y necesitan un frontmatter determinado. Todo ello se detalla en la [sección de gestión de contenido](/manuales/web-qgis/contenido/).

## Conversión `md` ->  `html`

La conversión de archivos md, así como ficheros relacionados (como multimedia, pdfs...) la realiza hugo. Para ello es necesario o bien tenerlo instalado en el ordenador local (ver [instrucciones de instalación en documentación oficial](https://gohugo.io/getting-started/installing/)) (ideal para pruebas en local) o utilizar un sistema de integración contínua que lo ejecute en un servidor, ya sea de forma complementaria o alternativa. 

Para la web de QGIS.es utilizamos el servicio freemium ofrecido por [netlify](https://netlify.com) configurado de modo que cualquier commit realizado en la rama `master` ejecutará automática una `build` que, a su vez, ejecuta hugo y genera los archivos html en una carpeta fuera del repositorio pero visible a través del dominio. De este modo se pueden editar los archivos desde cualquier ordenador (siempre que se tenga permiso de edición en el repositorio) sin necesidad de tener instalado hugo.