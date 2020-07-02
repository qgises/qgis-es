---
title: Gestión de páginas especiales
linktitle: Páginas especiales
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  manual_web:
    parent: Contenido
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---

Existen dos contenidos especiales dentro de la carpeta `/content` que no son estrictamente tipos de contenido, a saber:

* [Página de inicio](home) (`/content/home`)
* [Página de la asociación](/asociacion) (`/content/asociacion`)

Estos dos contenidos son carpetas que contienen, por lo menos un archivo llamado `index.md` y una serie de widgets de distintos tipos.

{{% alert warning %}}
A diferencia de los tipos de contenido, en los que principamente editamos el archivo `index.md`, en estos contenidos especiales no deberemos editarlo. Únicamente editaremos los otros archivos `*.md` -widgets-)
{{% /alert %}}

{{% alert note %}}
A diferencia de los tipos de contenido, **estas páginas no pueden editarse desde la interfaz de administración** y deberán editarse con un editor de texto y hacer los commits oportunos al repositorio.
{{% /alert %}}

## Widgets

Cada archivo *.md en estos contenidos es un tipo de widget. El número y tipo de campos variará de un widget a otro, pero hay una serie de parámetros que se mantienen entre todos:

* Peso (`weight`): Este campo puede tener cualquier número (incluso negativo) y sirve para ordenar cómo queremos que se vean los widgets de la misma página. Los widgets con números más elevados "pesan" más y se mostrarán en la parte inferior de la página. Si dos widgets tienen el mismo peso, se ordenarán alfabéticamente por el título


## Página de Inicio

La página de inicio está en `/content/home` y consta de los siguientes widgets/archivos, ordenados según se ven en la portada:


{{< figure src="/img/manual/home-widgeet-hero-landing.jpg" title="Widget hero-landing.md" numbered="true" lightbox="true" >}}

* `hero-landing.md` Es un widget de tipo `hero` que tiene:
  * título
  * texto
  * imagen de fondo
  * Botón con icono y texto, enlazado a la página de la asociación
  * Comentario (`cta_alt`)
  * Nota (`cta_note`) con los créditos de la imagen

{{< figure src="/img/manual/home-widget-colabora.png" title="Widget colabora.md" numbered="true" lightbox="true" >}}

* `colabora.md`. Es un widget de tipo `featurette` que contiene un listado de iconos de font awesome, textos y links

{{< figure src="/img/manual/home-widget-slider.png" title="Widget slider.md" numbered="true" lightbox="true" >}}

* `slider.md`: un widget de tipo slider (aunque solo tiene una slide) en el que podemos especificar una colección de imágenes, textos, botones y alineaciones de texto.

{{< figure src="/img/manual/home-widget-redes-sociales.png" title="Widget redes-sociales.md" numbered="true" lightbox="true" >}}

* `redes-sociales.md`. Es un widget de tipo `featurette` que contiene un listado de iconos de font awesome, textos y links


{{< figure src="/img/manual/home-widget-hero-qgis.jpg" title="Widget hero-qgis.md" numbered="true" lightbox="true" >}}

* `hero-qgis.md` Es un widget de tipo `hero` 

{{< figure src="/img/manual/home-widget-posts.png" title="Widget slideshow.md" numbered="true" lightbox="true" >}}

* `posts.md` Es un widget de tipo `pages`

{{< figure src="/img/manual/home-widget-projects.png" title="Widget projects.md" numbered="true" lightbox="true" >}}

* `projects.md` Es un widget de tipo `portfolio`

{{< figure src="/img/manual/home-widget-talks.png" title="Widget talks.md" numbered="true" lightbox="true" >}}

* `talks.md` Es un widget de tipo `pages`


{{< figure src="/img/manual/home-widget-contact.png" title="Widget contact.md" numbered="true" lightbox="true" >}}

* `contact.md` Es un widget de tipo `contact`. Los datos de contacto se especifican en el archivo `/config/_default/params.toml`


## Página de Asociación

La página de la asociación está en `/content/asociacion` y consta de los siguientes widgets/archivos, ordenados según se ven en la portada:


{{< figure src="/img/manual/asociacion-widget-hero.jpg" title="Widget hero-landing.md" numbered="true" lightbox="true" >}}

* `hero.md` Es un widget de tipo `hero` que tiene:
  * título
  * texto
  * imagen de fondo
  * Botón con icono y texto, enlazado a la página de la asociación
  * Comentario (`cta_alt`)
  * Nota (`cta_note`) con los créditos de la imagen

{{< figure src="/img/manual/asociacion-widget-objetivos.png" title="Widget objetivos.md" numbered="true" lightbox="true" >}}

* `objetivos.md`. Es un widget de tipo `hero` 

{{< figure src="/img/manual/asociacion-widget-estatutos.png" title="Widget estatutos.md" numbered="true" lightbox="true" >}}

* `estatutos.md`: un widget de tipo `hero`

{{< figure src="/img/manual/asociacion-widget-precios.png" title="Widget precios.md" numbered="true" lightbox="true" >}}

* `precios.md`. Es un widget de tipo `featurette` que contiene un listado de iconos de font awesome, textos y links

{{< figure src="/img/manual/asociacion-widget-unete.png" title="Widget unete.md" numbered="true" lightbox="true" >}}

* `unete.md`: un widget de tipo `hero`

{{< figure src="/img/manual/asociacion-widget-redes-sociales-socios.png" title="Widget redes-sociales-socios.md" numbered="true" lightbox="true" >}}


* `redes-sociales-socios.md`. Es un widget de tipo `featurette` que contiene un listado de iconos de font awesome, textos y links


{{< figure src="/img/manual/asociacion-widget-socios.png" title="Widget socios.md" numbered="true" lightbox="true" >}}

* `socios.md` Es un widget de tipo `people` 

{{< figure src="/img/manual/home-widget-contact.png" title="Widget contact.md" numbered="true" lightbox="true" >}}

* `contact.md` Es un widget de tipo `contact`. Los datos de contacto se especifican en el archivo `/config/_default/params.toml`