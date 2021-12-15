---
title: QGIS no está afectado por Log4J
subtitle: QGIS no está afectado por Log4J
date: 2021-12-15T06:54:24.140Z
summary: QGIS no está afectado por Log4J
draft: false
featured: true
image:
  filename: avatar.png
  focal_point: Smart
  preview_only: false
---
La vulnerabilidad causada por **Log4J** ha estado en todos los titulares tecnológicos de los últimos días. Por ello, hemos ([qgis.org](http://www.qgis.org)) recibido muchas preguntas queriendo saber si **QGIS** ha sido afectado. Por ello, nos gustaría aclarar:

**QGIS** no es una aplicación **Java**. **QGIS** está basado en **C++** y **Python**. **QGIS**, por lo tanto, no usa ningún componente de **Java**, incluyendo **Log4j**(ava).

Es técnicamente posible que algún "**plugin**" (complemento) utilice aplicaciones **Java**. Si estás preocupado por cualquier potencial vulnerabilidad, por favor ponte en contacto con los desarrolladores del "**plugin**" (complemento) a través de la información de contacto que puedes encontrar en sus metadatos.