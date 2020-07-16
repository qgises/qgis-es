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
  manual_web:
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

La conversión de archivos md, así como ficheros relacionados (como multimedia, pdfs...) la realiza hugo. El proyecto está configurado utilizando un sistema de integración contínua en netlify para que cada commit de la rama `master` ejecute hugo en un servidor, genere los archivos html correspondientes y los muestre en la url deseada, todo de forma automática.

### Instrucciones para utilización de forma autónoma

{{% alert warning %}}
Estos pasos únicamente son necesarios en caso de no querer utilizar netlify en el futuro y utilizar github pages. 
{{% /alert %}}

**Preparar la carpeta de despliegue**

Crear una carpeta pública dentro de la página web clonada y buscar la rama de la página gh en ella ejecutando el siguiente comando desde la carpeta de la página web clonada:

```
git worktree add -B gh-pages public origin/gh-pages
```

**Build**

Después de hacer algún cambio en el contenido del sitio, puedes comprobar cómo se ve haciendo:

```
hugo serve
```

o, si tenemos posts en borrador que queremos ver:

```
hugo -D serve
```

Para construir para la carpeta pública con el sitio renderizado en html:

```
hugo
```

Hacer _Commit_ de los cambios en el código fuente

```
git add -u  # and add new assets if any
git commit -m "Update sources"
git push origin master
```

Hacer cambios del sitio renderizado. Para ello es necesario acceder a la carpeta `public` configurada en el primer paso para conectarla con github pages y hacer commit y push de los cambios:

```
cd public
git commit -am "Update site"
git push origin gh-pages
```