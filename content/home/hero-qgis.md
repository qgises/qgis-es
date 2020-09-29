+++
# Hero widget.
widget = "hero"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 40  # Order that this section will appear.

title = ""

# Hero image (optional). Enter filename of an image in the `static/img/` folder.
hero_media = "logos/qgis-icon400b.png"

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.

  # Background color.
  # color = "navy"

  # Background gradient.
  gradient_start = "#9dda77"
  gradient_end = "#497d29"

  # Background image.
  image = "49662184946_04df0bccc9_k.jpg"  # Name of image in `static/img/`.
  image_darken = 0.6  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.
  image_size = "cover"  #  Options are `cover` (default), `contain`, or `actual` size.
  image_position = "center"  # Options include `left`, `center` (default), or `right`.
  image_parallax = true  # Use a fun parallax-like fixed background effect? true/false

  # Text color (true=light or false=dark).
  text_color_light = true

# Call to action links (optional).
#   Display link(s) by specifying a URL and label below. Icon is optional for `[cta]`.
#   Remove a link/note by deleting a cta/note block.
[cta]
  url = "https://qgis.org/es/site/forusers/download.html"
  label = "Descarga QGIS"
  icon_pack = "fas"
  icon = "download"

[cta_alt]
  url = "https://qgis.org/es/site/forusers/index.html#trainingmaterial"
  label = "Consulta la documentación"

# Note. An optional note to show underneath the links.
[cta_note]
  label = 'Foto: Harry Bronkhorst'
  # label = 'QGIS es un proyecto de [![](img/logos/osgeo_logo_white200.png)](https://www.osgeo.org/)<br>Foto: Harry Bronkhorst'
  # label = '[Consulta las novedades de la última version](https://qgis.org/es/site/forusers/visualchangelogs.html) <br>Foto: [Harry Bronkhorst](https://www.flickr.com/photos/7361002@N08/49662184946/in/pool-qgis/)'
+++

QGIS es un Sistema de Información Geográfica (SIG) de Código Abierto con licencia [GNU](). QGIS es un proyecto oficial de [Open Source Geospatial Foundation](https://www.osgeo.org/). Corre sobre GNU/Linux, Unix, macOS, Windows y Android y soporta numerosos formatos y funcionalidades de datos vector, datos ráster y bases de datos.

<!--<small>QGIS es un proyecto de [![](img/logos/osgeo_logo_white200.png)](https://www.osgeo.org/)</small> -->