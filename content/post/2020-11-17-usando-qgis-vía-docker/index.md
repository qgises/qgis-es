---
title: Usando QGIS vía Docker
subtitle: O cómo poder correr múltiples instancias y/o versiones de nuestro
  programa favorito a la vez usando Docker
date: 2020-11-17T15:43:48.253Z
summary: Explicación de cómo correr QGIS componiendo una imagen de Docker
draft: true
featured: false
authors:
  - miguel-sevilla
tags:
  - docker
image:
  filename: featured.png
  focal_point: Smart
  preview_only: false
---
La [virtualización por contenedores o a nivel de sistema operativo](https://es.wikipedia.org/wiki/Virtualizaci%C3%B3n_a_nivel_de_sistema_operativo) usando [Docker](https://es.wikipedia.org/wiki/Docker_(software)) es una técnica que se está extendiendo últimamente por su flexibilidad y sencillez para desplegar servicios y aplicaciones.

En mi caso, que utilizo de GNU/Linux como sistema operativo, concretamente uso como distribución Ubuntu, uno de los *problemas* que me encontraba si quería probar alguna versión distinta de QGIS era que debía de sustituir la que tenía mi sistema o, durante mucho tiempo lo hacía usando una máquina virtual que montaba ex profeso en [VirtualBox](https://es.wikipedia.org/wiki/VirtualBox).

Con la llegada, o más bien mi comienzo en el uso, de Docker, mi perspectiva para la prueba de diferentes versiones de QGIS cambió al poder *mover* la virtualización original que hacía a una imagen de este sistema de *virtualización ligera*