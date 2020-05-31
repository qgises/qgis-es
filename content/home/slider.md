+++
# Slider widget.
widget = "slider"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 20  # Order that this section will appear.

# Slide interval.
# Use `false` to disable animation or enter a time in ms, e.g. `5000` (5s).
interval = 5000

# Slide height (optional).
# E.g. `500px` for 500 pixels or `calc(100vh - 70px)` for full screen.
height = ""

# Slides.
# Duplicate an `[[item]]` block to add more slides.
[[item]]
  title = "¡Hola! :smile:"
  content = "Somos la asociación para apoyar y favorecer el uso de QGIS entre la comunidad española."
  align = "center"  # Choose `center`, `left`, or `right`.

  # Overlay a color or image (optional).
  #   Deactivate an option by commenting out the line, prefixing it with `#`.
  overlay_color = "#589632"  # An HTML color value.
  overlay_img = "qgis-fest-girona-2016.jpg"  # Image path relative to your `static/img/` folder.
  overlay_filter = 0.4  # Darken the image. Value in range 0-1.

  cta_label = "Conoce la asociacion"
  cta_url = "/asociacion"
  cta_icon_pack = "fas"
  cta_icon = "users"

[[item]]
  title = ""
  content = "QGIS es un Sistema de Información Geográfica (SIG) de Código Abierto licenciado bajo [GNU](). QGIS es un proyecto oficial de [Open Source Geospatial Foundation](https://www.osgeo.org/). Corre sobre Linux, Unix, Mac OSX, Windows y Android y soporta numerosos formatos y funcionalidades de datos vector, datos ráster y bases de datos."
  align = "left"

  overlay_color = "#f0e64a"  # An HTML color value.
  overlay_img = "49662184946_04df0bccc9_k.jpg"  # Image path relative to your `static/img/` folder.
  overlay_filter = 0.5  # Darken the image. Value in range 0-1.
  # Call to action button (optional).
  #   Activate the button by specifying a URL and button label below.
  #   Deactivate by commenting out parameters, prefixing lines with `#`.
  cta_label = "Descarga QGIS"
  cta_url = "https://qgis.org/es/site/forusers/download.html"
  cta_icon_pack = "fas"
  cta_icon = "download"
  cta_alt_url = "https://qgis.org/es/site/forusers/index.html#trainingmaterial"
  cta_alt_label = "Consulta la documentación"

  # Note. An optional note to show underneath the links.
  cta_note_label = 'Foto: Harry Bronkhorst'
  
[[item]]
  title = "Únete a la lista y preséntate."
  content = "¿No puede llegar a una reunión? No hay problema. Colaboramos en proyectos, solicitamos ayuda y realizamos publicaciones en nuestra [Lista de correo](). Damos la bienvenida a todos los que se inscriban ... es posible que veas algo en lo que te interese ayudar."
  align = "center"

  overlay_color = "#ee7913"  # An HTML color value.
  overlay_img = ""  # Image path relative to your `static/img/` folder.
  overlay_filter = 0.5  # Darken the image. Value in range 0-1.
  # Call to action button (optional).
  #   Activate the button by specifying a URL and button label below.
  #   Deactivate by commenting out parameters, prefixing lines with `#`.
  cta_label = "Únete a la lista"
  cta_url = "https://lists.osgeo.org/mailman/listinfo/qgis-es"
  cta_icon_pack = "fas"
  cta_icon = "mail-bulk"
+++
