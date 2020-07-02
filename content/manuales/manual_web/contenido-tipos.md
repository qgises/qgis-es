---
title: Gestión de tipos de contenido
linktitle: Tipos de contenido
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  manual_web:
    parent: Contenido
    weight: 1

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---

Existen varios tipos de contenido, y a su vez, cada tipo de contenido, tiene unos campos diferentes. Lo que determina el tipo de contenido es la carpeta en la que se encuentra (siempre dentro de `/content`). Eso, a su vez, condiciona los campos que tendrá. Técnicamente, el tipo de contenido es un archivo llamado `index.md` con unos campos determinados en el frontmatter del archivo.

{{% alert warning %}}
Es crucial ser muy cuidadosos con lo siguiente:

1. la carpeta donde creemos el contenido (siempre dentro de `/content/<tipo-de-contenido>`), 
2. el nombre del archivo: siempre será `index.md`, aunque estará metido en una subcarpeta que podrá tener el nombre que queramos (el nombre de la subcarpeta determinará su url)
3. el formato de los campos dentro del frontmatter, siguiendo formato toml.

Si lo hacemos de cualquier otro modo, Hugo no podrá regenerar el sitio correctamente y, por tanto, no se actualizará hasta que no corrijamos el error.
{{% /alert %}}


{{% alert note %}}
Si utilizamos la [interfaz de administración](#interfaz-de-administración) nos aseguraremos siempre de que los archivos estén en la carpeta adecuada, se llamen como se tienen que llamar y tengan correctamente formateados los campos.

Si no queremos usar la interfaz otra opción es copiar un contenido del mismo tipo que sabemos que funciona, renombrarlo y editarlo.
{{% /alert %}}

En esta sección veremos qué tipos de contenido tenemos y cómo editarlos a través de la interfaz de administración.


## Interfaz de administración

Podemos acceder a una interfaz de administración desde la url `https://qgis.es/admin`. Desde ella, cualquier persona con cuenta de usuario en github podrá crear o editar [algunos tipos de contenido]({{< ref "/manuales/manual_web/contenido-tipos.md" >}}), aunque las modificaciones de los usuarios sin permiso de escritura en el repo no se verán, sinó que quedarán pendientes de revisión. 

{{% alert note %}}
A nivel técnico, lo que hace la administración web equivale a que cada usuario creará un commit en el repositorio original o en un fork (en función de si tiene o no permisos de escritura). Si el usuario tiene permisos de escritura en el repo, ese commit se mostrará en cuanto se publique. De lo contrario, se creará una Pull request que un administrador deberá revisar y aceptar para que se integre y visualice en la web.
{{% /alert %}}

### Acceder a la administración

1. Acceder a https://qgis.es/admin
2. Hacer clic en el botón de login e introducir las credenciales de github ([Ver figura 1](#figure-login-para-la-interfaz-de-administración))
3. (Únicamente la primera vez) Aceptar los permisos que pide la aplicación. Es necesario otorgarle permisos para acceder a los repositorios de github porque lo que hace la interfaz es, precisamente, crear y editar archivos, hacer commits y pull requests.

{{< figure src="/img/netlifycms/netlifycms-login.png" title="Login para la interfaz de administración" numbered="true" lightbox="true" >}}

### Editar contenido existente

Cada tipo de contenido se agrupa en "colecciones", que es lo que se ve al acceder a la administración.

1. Hacer clic en la colección que queremos editar (lateral izquierdo), en función de si es usuario (`Authors`), un post del blog (`Posts`), un evento (`Talks`), una página sencilla (`Page`) o un caso de éxito (`Project`). Aparecerá un listado con todos los contenidos de este tipo, ya sean publicados o en borrador.
2. Hacer clic en el título del contenido que queremos editar. ([Ver figura 2](#figure-listado-de-eventos-talk-y-botón-para-crear-nuevos-tipos-de-contenido))

{{< figure src="/img/netlifycms/cms-home.png" title="Listado de eventos (talk) y botón para crear nuevos tipos de contenido" numbered="true" lightbox="true" >}}

3. Escribir el contenido en la parte lateral izquierda. En función del tipo de contenido, se mostrarán unos campos u otros. Podemos utilizar un editor de texto enriquecido (WYSIWYG) o bien desactivarlo y escribir directamente en `markdown`. A la derecha podremos previsualizar los cambios, aunque sin el estilo de la web (los tipos, tamaños y colores de las letras variarán en la web).

{{< figure src="/img/netlifycms/cms.png" title="Edición de un post de blog y su previsualización a tiempo real en el lateral" numbered="true" lightbox="true" >}}

4. Hacer clic en guardar (si queremos guardar cambios pero que no se publiquen) o Publish (para que aparezcan publicados en la web -únicamente para usuarios que tengan permisos de escritura-)

### Publicar contenido nuevo

Opción A: 

1. Hacer clic en el botón `Quick add` que aparece en la esquina superior derecha ([Ver figura 2](#figure-listado-de-eventos-talk-y-botón-para-crear-nuevos-tipos-de-contenido))
2. Seleccionar del dropdown el tipo de contenido que queremos crear.
3. Repetir los mismos pasos descritos en la sección [Editar contenido existente](#editar-contenido-existente)

Opción B:

1. Hacer clic en la colección que queremos editar (lateral izquierdo), en función de si es usuario (`Authors`), un post del blog (`Posts`), un evento (`Talks`), una página sencilla (`Page`) o un caso de éxito (`Project`). Aparecerá un listado con todos los contenidos de este tipo, ya sean publicados o en borrador.
2. Hacer clic en el botón `Create <tipo de contneido>`  ([Ver figura 2](#figure-listado-de-eventos-talk-y-botón-para-crear-nuevos-tipos-de-contenido))
3. Repetir los mismos pasos descritos en la sección [Editar contenido existente](#editar-contenido-existente)


### Workflow editorial

Un contenido puede estar en alguno de estos tres estados:
1. Borrador (`Drafts`): el contenido ha sido creado por su autor, pero está pendiente de revisión. Se crea un commit en una rama nueva, pero no se visualiza el contenido.
2. En revisión (`In Review`): el contenido está siendo revisado por un editor. 
3. Publicada (`Published`): el contenido ha sido revisado por un editor y está listo para ser publicado. Se crea una Pull Request en el repositorio que tendrá que ser revisada por algún administrador o editor con permisos de escritura.

Para cambiar de un estado a otro, basta con arrastrar y soltar.

{{% alert warning %}}
El nombre de la columna "Published" puede llevar a confusión: no basta con arrastrar un contenido de una columna a esta para que aparezca publicado.
**Para que un contenido esté publicado, deberá arrastrarse a esta columna y -si se tienen permisos de escritura- hacer clic en el botón _"Publish new entry"_** ([ver Figura 4](#figure-workflow-editorial-contenidos-pendientes-de-revisión))
{{% /alert %}}


1. Para publicar contenidos escritos por usuarios que tienen permiso para modificar el repositorio, deberemos visitar el menú superior **Editorial Workflow** 

{{< figure src="/img/netlifycms/cms-editorial-workflow2.png" title="Workflow editorial: contenidos pendientes de revisión" numbered="true" lightbox="true" >}}


## Personas y entidades (`Authors`)

Usaremos el tipo de contenido autores para el [listado de miembros de la asociación](/asociacion/#people).
Los contenidos de este tipo estarán siempre en la carpeta `/content/authors/` y tienen los siguientes campos:

* Display name (`title`): El nombre que se visualizará para el nombre de la persona/entidad
* Username (`authors`): nombre amigable (sin acentos ni espacios) del usuario. Deberá ser el mismo que la carpeta que lo contiene. Este es el nombre de usuario que utilizaremos cuando queramos que otro tipo de contenido lo "firme" un usuario determinado. Al indicarlo, aparecerá su ficha breve bajo el contenido.
* Super usuario (`superuser`) (verdadero/falso): si no se indica autor de un contenido, se asignará automáticamente al usuario o usuarios que estén marcados como superusuarios. Por defecto, únicamente el usuario de la Asociación española de QGIS (`admin`) está marcado como superusuario.
* Cargo (`role`)
* Organización(es) (`organizations`): es una colección de campos para indicar el nombre y la url de organizaciones en las que esté vinculado el usuario en cuestión.
* Biografía breve (`bio`): es la breve biografía que aparecerá en en la ficha resumen que se muestra para los autores de contenidos
{{< figure src="/img/ficha-autor.png" title="Ficha resumen del autor de un post del blog." numbered="true" lightbox="true" >}}
* Intereses
* Educación
* Redes sociales: colección de campos para indicar la red o redes sociales del usuario
  * Link
  * icono: nombre del icono en font awesome
  * tipo de icono: tipo de icono de font-awesome
* Email
* Grupo: grupo(s) al que pertenece el usuario. Actualmente, el listado de usuarios mostrará, por este orden, los usuarios pertenecientes a los siguientes grupos:
  * "Junta directiva"
  * "Grandes colectivos"

La biografía completa del usuario se escribirá en el cuerpo del texto.

{{% alert note %}}
Para visualizar la imagen del usuario, deberemos colocar un archivo llamado `avatar.jpg` o `avatar.png` en el mismo nivel que el archivo `index.md`. Hugo creará copias del tamaño adecuado cuando genere el sitio.
{{% /alert %}}

## Posts de Blog (`Posts`)

Lost post se mostrarán en la [sección del blog de la página de inicio](/#posts), están dentro de la carpeta `/content/post` y tienen los campos siguientes:

* Título (obligatorio)
* Subtítulo
* Resumen
* Autores: deberá escribirse tal y como se indicó en el campo `username` del autor (ver [contenido autor](#personas-y-entidades-authors)). Si no se especifica, será el usuario genérico de la asociación)
* Tags
* Categorías
* Fecha (si usamos la interfaz, por defecto será la misma que el día en el que creamos el contenido, pero puede cambiarse seleccionando la fecha adecuada en el widget del calendario)
* Destacado (sí/no)
* Proyecto (opcional)

El contenido del post se escribirá en el cuerpo del texto.

{{% alert  note%}}
Si queremos que tengan una imagen destacada, deberemos colocar un archivo llamado `featured.jpg` o `featured.png` en el mismo nivel que el archivo `index.md`. Hugo creará copias del tamaño adecuado cuando genere el sitio.
{{% /alert %}}

## Eventos (`Talks`)

Los eventos recientes se muestran en la [sección `eventos` de la página principal](/#talks) y en [esta página](/talks) pueden consultarse todos.

Los contenidos de este tipo estarán siempre en la carpeta `/content/talk/` y tienen los siguientes campos:

* Título de la sesión (`title`)
* Nombre del evento (`event`): en aso de que la sesión se enmarque dentro de un evento específico (por ejemeplo una charla dentro de una QGIS user conf)
* URL del evento (`event_url`)
* Ubicación (`location`): nombre del sitio donde se realiza
* Dirección (`address`): dirección del sitio donde se realiza
* Resumen (`summary`)
* Abstract (`abstract`)
* Fecha y hora de inicio (`date`)
* Fecha y hora de finalización (`date_end`) (opcional)
* Todo el día (sí/no)
* Autores (`authors`): deberá escribirse tal y como se indicó en el campo `username` del autor (ver [contenido autor](#personas-y-entidades-authors)). Si no se especifica, será el usuario genérico de la asociación)
* Destacado
* Redes sociales: colección de campos para indicar la red o redes sociales del usuario
  * Link
  * icono: nombre del icono en font awesome
  * tipo de icono: tipo de icono de font-awesome
  * Nombre
* URL del código fuente (`url_code`): url donde encontrar el código fuente
* URL PDF
* URL Slides
* URL Vídeo

El contenido del evento se escribirá en el cuerpo del texto.

{{% alert  note%}}
Si queremos que tengan una imagen destacada, deberemos colocar un archivo llamado `featured.jpg` o `featured.png` en el mismo nivel que el archivo `index.md`. Hugo creará copias del tamaño adecuado cuando genere el sitio.
{{% /alert %}}


## Casos de éxito (`Projects`)

Los casos de éxito se muestran en la [sección `Casos de éxito` de la página principal](/#projects).

Los contenidos de este tipo estarán siempre en la carpeta `/content/project/` y tienen los siguientes campos:

* Título (`title`)
* Resumen (`summary`)
* Tags (`tags`)
* Fecha y hora de publicación (`date`)
* Link externo (`external_link`): si indicamos una url, es la página que se verá cuando hagamos clic desde el listado de casos (por tanto, no se verá la información dentro de la web de QGIS.es)
* Autores (`authors`): deberá escribirse tal y como se indicó en el campo `username` del autor (ver [contenido autor](#personas-y-entidades-authors)). Si no se especifica, será el usuario genérico de la asociación)
* Imagen destacada (`image`): imagen llamada `featured.png` o `featured.jpg`. Puede tener una descripción.
* Links sociales: colección de campos para indicar links e iconos de fontawesome:
  * Link
  * icono: nombre del icono en font awesome
  * tipo de icono: tipo de icono de font-awesome
  * Nombre
* URL del código fuente (`url_code`): url donde encontrar el código fuente
* URL PDF
* URL Slides
* URL Vídeo

El contenido del proyecto se escribirá en el cuerpo del texto.

{{% alert  note%}}
Si queremos que tengan una imagen destacada, deberemos colocar un archivo llamado `featured.jpg` o `featured.png` en el mismo nivel que el archivo `index.md`. Hugo creará copias del tamaño adecuado cuando genere el sitio.
{{% /alert %}}

## Páginas sencillas (`Pages`)

Las páginas son el tipo de contenido más sencillo de todos, son archivos situados en `/content/<nombre-archivo>.md` y tienen el mínimo número de campos:

* Título
* Subtítulo
* Draft (sí/no)
* Fecha de publicación

## Otros contenidos especiales

Los siguientes tipos de contenido no se pueden editar desde la interfaz de administración:

* Manuales (en la carpeta `/content/manuales`)
* Páginas especiales:
  * Inicio (`/content/home`)
  * Asociación (`/content/asociacion`)