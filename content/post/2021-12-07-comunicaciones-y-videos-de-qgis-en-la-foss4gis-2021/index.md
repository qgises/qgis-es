---
title: Comunicaciones y vídeos sobre QGIS en la FOSS4GIS 2021
subtitle: 
date: 2021-12-08T09:30:00.000Z
summary: Recopilación de comunicaciones relacionadas con QGIS en la conferencia internacional FOSS4GIS 2021.
draft: false
featured: true
authors:
  - patricio-soriano
tags:
  - QGIS
  - FOSS4GIS
  - vídeos
categories:
  - Eventos
image:
  filename: featured.png
  focal_point: TOPRIGHT
  preview_only: true
---

FOSS4G es la conferencia de Software Libre y de Código Abierto para Geoespacial de [OSGeo](https://www.osgeo.org/). Con más de 15 años de experiencia, esta conferencia anual es la mayor reunión mundial de software geoespacial. Las distintas conferencias de FOSS4G se han celebrado en múltiples lugares de todo el mundo. En el [FOSS4G 2021](https://2021.foss4g.org/es/), Argentina ha sido la anfitriona del evento que ha tenido lugar de forma virtual entre los días 27 de septiembre de 2 de octubre de 2021.

Este año el evento ha sido organizado por la entidad sin fines de lucro [**Geolibres Asociación Civil**](http://geolibres.org.ar/)  que tiene entre sus objetivos *"el de promover la creación y el uso de datos geográficos de acceso libre, la adopción de estándares geográficos, el uso de software libre y de código abierto para el desarrollo de capacidades de información geoespacial, a través de acciones que fomenten y fortalezcan a la comunidad geomática"*. Geolibres sirve de marco legal para varias comunidades del mundo FOSS4G en Argentina, como son Geoinquiet@s Argentina (Capítulo local de OSGeo), OSM Argentina y GeochicasOSM.

En esta última edición se han realizado un total de **338 presentaciones** con una amplia variedad de temáticas vinculadas siempre con programas, iniciativas o proyectos sobre software geoespacial de código abierto. Como no podía ser de otra forma la **presencia de QGIS en las charlas ha sido muy numerosa**.

En el siguiente listado hemos realizado una recopilación de las **50 comunicaciones** en las que se ha hablado o hecho referencia de alguna u otra manera al Sistema de Información Geográfica Open Source QGIS. 

La selección se ha realizado mediante la búsqueda del término QGIS en la agenda de las charlas. Esto significa que puede que algunas de ellos no traten directamente sobre QGIS, pero sí han hecho a QGIS al menos en el resumen.

Las sesiones se han organizo por los *tracks* de la conferencia incluyendo el título de la presentación, el enlace sus datos principales y el vídeo en el [canal de YouTube de FOSS4G](https://www.youtube.com/c/FOSS4G).

**Índice de presentaciones:**

<!-- TOC -->
- [Track – Software](#track--software)
  - [QGIS and OGC APIs - how do they work together?](#qgis-and-ogc-apis---how-do-they-work-together)
  - [Geostyler Mapfile Parser](#geostyler-mapfile-parser)
  - [PgMetadata - A QGIS plugin to store the metadata of PostgreSQL layers inside the database, and use them inside QGIS](#pgmetadata---a-qgis-plugin-to-store-the-metadata-of-postgresql-layers-inside-the-database-and-use-them-inside-qgis)
  - [QField Features Frenzy](#qfield-features-frenzy)
  - [Lizmap to create a Web Map Application with QGIS Desktop and Server](#lizmap-to-create-a-web-map-application-with-qgis-desktop-and-server)
  - [The Very Best New Features of QGIS 3.x](#the-very-best-new-features-of-qgis-3x)
  - [QGIS Plugin Development Is Not Scary: Lessons Learned from Literature Mapper](#qgis-plugin-development-is-not-scary-lessons-learned-from-literature-mapper)
  - [Input, Mergin & QGIS: collect data, sync, and collaborate with ease](#input-mergin--qgis-collect-data-sync-and-collaborate-with-ease)
  - [Store and visualize images from a cloud infrastructure thanks to COG format and QGIS](#store-and-visualize-images-from-a-cloud-infrastructure-thanks-to-cog-format-and-qgis)
  - [Integrating AI features into QGIS : welcome QDeeplandia](#integrating-ai-features-into-qgis--welcome-qdeeplandia)
  - [Using point clouds in QGIS](#using-point-clouds-in-qgis)
  - [GeoMapFish und QGIS Server](#geomapfish-und-qgis-server)
  - [How to use OpenStreetMap data in QGIS Desktop](#how-to-use-openstreetmap-data-in-qgis-desktop)
  - [Vector tile basemaps for your QGIS project](#vector-tile-basemaps-for-your-qgis-project)
  - [Easily publish your QGIS projects on the web with QWC2](#easily-publish-your-qgis-projects-on-the-web-with-qwc2)
  - [From static PDFs to interactive, geospatial PDFs, or, ‘I never knew that PDFs could do that!’](#from-static-pdfs-to-interactive-geospatial-pdfs-or-i-never-knew-that-pdfs-could-do-that)
  - [Deploying QGIS using command line options](#deploying-qgis-using-command-line-options)
  - [FOSS4G software developments for Water Utilities Management in Eastern Africa by using Vector Tiles](#foss4g-software-developments-for-water-utilities-management-in-eastern-africa-by-using-vector-tiles)
  - [QGIS Bridge Status Report](#qgis-bridge-status-report)
  - [G3W-SUITE: in OS framework for publishing and managing QGIS projects on the Web](#g3w-suite-in-os-framework-for-publishing-and-managing-qgis-projects-on-the-web)
  - [OpenMapTiles: vector tiles from OSM](#openmaptiles-vector-tiles-from-osm)
- [Track – Use cases & applications](#track--use-cases--applications)
  - [Open Source and Mining: a roadmap](#open-source-and-mining-a-roadmap)
  - [EcoValuator: Basic Ecosystem Service Valuation for Custom Landscapes](#ecovaluator-basic-ecosystem-service-valuation-for-custom-landscapes)
  - [Optimized publishing of map and dataservices with GeoServer, GeoStyler and MapProxy](#optimized-publishing-of-map-and-dataservices-with-geoserver-geostyler-and-mapproxy)
  - [Case study of data storage for preservation of our archiving system at the National Geographic and Hydrographic Institute of Madagascar](#case-study-of-data-storage-for-preservation-of-our-archiving-system-at-the-national-geographic-and-hydrographic-institute-of-madagascar)
  - [How Open Source solution help to build an scalable and adaptable environmental decision platform tools](#how-open-source-solution-help-to-build-an-scalable-and-adaptable-environmental-decision-platform-tools)
  - [Visualising trajectories in 3D](#visualising-trajectories-in-3d)
  - [The Borked Supply Chain. How the Telekom brings FOSS Projects into Stable Production](#the-borked-supply-chain-how-the-telekom-brings-foss-projects-into-stable-production)
  - [UN Open GIS Initiative: Use cases of Open Mobile GIS solutions in the context UN peace operations](#un-open-gis-initiative-use-cases-of-open-mobile-gis-solutions-in-the-context-un-peace-operations)
  - [CityJSON: 3D city models for everyone](#cityjson-3d-city-models-for-everyone)
  - [QGIS MetaSearch: lowering the barrier to geospatial data discovery in the desktop](#qgis-metasearch-lowering-the-barrier-to-geospatial-data-discovery-in-the-desktop)
  - [3D Urban data in QGIS](#3d-urban-data-in-qgis)
  - [Spatial analysis of cultural activities in Buenos Aires](#spatial-analysis-of-cultural-activities-in-buenos-aires)
  - [Giswater : open source management tool for water networks](#giswater--open-source-management-tool-for-water-networks)
  - [An implementation of FOSS4G - QGIS, QField and Vector Tiles for rural water supply management in Rwanda](#an-implementation-of-foss4g---qgis-qfield-and-vector-tiles-for-rural-water-supply-management-in-rwanda)
  - [QGIS, Football, what else ?](#qgis-football-what-else-)
  - [Parks & Equity: Using PyQGIS and Rgeoda for Evaluating Localized Equitable Park Access across the United States](#parks--equity-using-pyqgis-and-rgeoda-for-evaluating-localized-equitable-park-access-across-the-united-states)
- [Track – Open data](#track--open-data)
  - [WAPLUGIN: Water Accounting and Productivity Plugin for QGIS](#waplugin-water-accounting-and-productivity-plugin-for-qgis)
- [Track – Community / OSGeo](#track--community--osgeo)
  - [Building Open Source Community in Pandemic](#building-open-source-community-in-pandemic)
  - [News from GeoStyler](#news-from-geostyler)
- [Track – Transition to FOSS4G](#track--transition-to-foss4g)
  - [Free and Open-Source Molusce Plugin for landcover Anlysis and Prediction; a case study in Banepa and Dhulikhee municipality, Nepal](#free-and-open-source-molusce-plugin-for-landcover-anlysis-and-prediction-a-case-study-in-banepa-and-dhulikhee-municipality-nepal)
  - [Large scale QGIS deployments : feedback and lessons learned](#large-scale-qgis-deployments--feedback-and-lessons-learned)
  - [GIS for Small Cities - A Hybrid Approach](#gis-for-small-cities---a-hybrid-approach)
- [Track – Academic](#track--academic)
  - [GEE Timeseries Explorer for QGIS – Instant access to petabytes of Earth observation data](#gee-timeseries-explorer-for-qgis--instant-access-to-petabytes-of-earth-observation-data)
  - [Using FOSS to teach university GIS courses online: lessons learned during a pandemic](#using-foss-to-teach-university-gis-courses-online-lessons-learned-during-a-pandemic)
- [Track – Education & research](#track--education--research)
  - [Spatial interaction models, internal migration and FOSS4GIS](#spatial-interaction-models-internal-migration-and-foss4gis)
  - [The status of GIS teaching in South African secondary schools including an evaluation of Free and Open Source Software for Geospatial (FOSS4G) using QGIS software and OpenStreetMap (OSM) data as teac](#the-status-of-gis-teaching-in-south-african-secondary-schools-including-an-evaluation-of-free-and-open-source-software-for-geospatial-foss4g-using-qgis-software-and-openstreetmap-osm-data-as-teac)
<!-- /TOC -->

- - -

## Track – Software

### QGIS and OGC APIs - how do they work together?

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/EKWRLC/)
<!-- - Vídeo https://www.youtube.com/watch?v=BQXrPtsMbGg -->

{{< youtube BQXrPtsMbGg >}}

### Geostyler Mapfile Parser

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/FG7PBN/)
<!-- - Vídeo https://www.youtube.com/watch?v=xts-o3BjmKo -->

{{< youtube xts-o3BjmKo >}}

### PgMetadata - A QGIS plugin to store the metadata of PostgreSQL layers inside the database, and use them inside QGIS

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/NHRNJX/)
<!-- - Vídeo https://www.youtube.com/watch?v=CjZZwKlzYGc -->

{{< youtube CjZZwKlzYGc >}}

### QField Features Frenzy

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/HHM9DU/)
<!-- - Vídeo https://www.youtube.com/watch?v=46v4gcRSYhc -->
  
{{< youtube 46v4gcRSYhc >}}

### Lizmap to create a Web Map Application with QGIS Desktop and Server

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/DKCPDN/)
<!-- - Vídeo https://www.youtube.com/watch?v=NIgFgkyBRts -->

{{< youtube NIgFgkyBRts >}}

### The Very Best New Features of QGIS 3.x

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/NJMC3A/)
<!-- - Vídeo https://www.youtube.com/watch?v=JDcWCWRtAro -->

{{< youtube JDcWCWRtAro >}}

### QGIS Plugin Development Is Not Scary: Lessons Learned from Literature Mapper

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/ZM7KYR/)
<!-- - Vídeo https://www.youtube.com/watch?v=VCfQoX5n4Eg -->

{{< youtube VCfQoX5n4Eg >}}

### Input, Mergin & QGIS: collect data, sync, and collaborate with ease

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/YW9DF8/)
<!-- - Vídeo https://www.youtube.com/watch?v=08lqph_3UH4 -->

{{< youtube 08lqph_3UH4 >}}

### Store and visualize images from a cloud infrastructure thanks to COG format and QGIS

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/DYR7PN/)
<!-- - Vídeo https://www.youtube.com/watch?v=Tnvz6UyPT_Y&t=14s -->

{{< youtube Tnvz6UyPT_Y >}}

### Integrating AI features into QGIS : welcome QDeeplandia

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/3D7CN3/)
<!-- - Vídeo https://www.youtube.com/watch?v=Tnvz6UyPT_Y -->

{{< youtube Tnvz6UyPT_Y >}}

### Using point clouds in QGIS

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/8Q837B/)
<!-- - Vídeo https://www.youtube.com/watch?v=HqLDp06s6Hs -->

{{< youtube HqLDp06s6Hs >}}

### GeoMapFish und QGIS Server

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/9STWGC/)
<!-- - Vídeo https://www.youtube.com/watch?v=aSH2W2VHRUI -->

{{< youtube aSH2W2VHRUI >}}

### How to use OpenStreetMap data in QGIS Desktop

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/SGWJ9W/)
<!-- - Vídeo https://www.youtube.com/watch?v=l95PoHGLrTI -->

{{< youtube l95PoHGLrTI >}}

### Vector tile basemaps for your QGIS project

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/GXAMDQ/)
<!-- - Vídeo https://www.youtube.com/watch?v=9s6_wHXWg6s -->

{{< youtube 9s6_wHXWg6s >}}

### Easily publish your QGIS projects on the web with QWC2

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/7M9KXP/)
<!-- - Vídeo https://www.youtube.com/watch?v=38dDJKR4XNA -->

{{< youtube 38dDJKR4XNA >}}

### From static PDFs to interactive, geospatial PDFs, or, ‘I never knew that PDFs could do that!’

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/Z7JZBS/)
<!-- - Vídeo https://www.youtube.com/watch?v=Vhi1bsbCWYU -->

{{< youtube Vhi1bsbCWYU >}}

### Deploying QGIS using command line options

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/M9WRGS/)
<!-- - Vídeo https://www.youtube.com/watch?v=H0O3VJC7YBE -->

{{< youtube H0O3VJC7YBE >}}

### FOSS4G software developments for Water Utilities Management in Eastern Africa by using Vector Tiles

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/JQ8DPM/)
<!-- - Vídeo https://www.youtube.com/watch?v=ZMWnj3aKT6Q -->

{{< youtube ZMWnj3aKT6Q >}}
  
### QGIS Bridge Status Report

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/BDGYGF/)
<!-- - Vídeo https://www.youtube.com/watch?v=AAmkeibrjC8 -->

{{< youtube AAmkeibrjC8 >}}

### G3W-SUITE: in OS framework for publishing and managing QGIS projects on the Web

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/VDSJQZ/)
<!-- - Vídeo https://www.youtube.com/watch?v=NLoP_ifYT0k -->

{{< youtube NLoP_ifYT0k >}}

### OpenMapTiles: vector tiles from OSM

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/XQTSTU/)
<!-- - Vídeo https://www.youtube.com/watch?v=jPCCmL1SttA -->

{{< youtube jPCCmL1SttA >}}

## Track – Use cases & applications

### Open Source and Mining: a roadmap

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/SMDYLP/)
<!-- - Vídeo https://www.youtube.com/watch?v=GQ_AIVYLJXk -->

{{< youtube GQ_AIVYLJXk >}}

### EcoValuator: Basic Ecosystem Service Valuation for Custom Landscapes

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/8CKRLE/)
<!-- - Vídeo https://www.youtube.com/watch?v=go-p_elphBg -->

{{< youtube go-p_elphBg >}}

### Optimized publishing of map and dataservices with GeoServer, GeoStyler and MapProxy

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/BXJFRC/)
<!-- - Vídeo https://www.youtube.com/watch?v=wg76zGQhgZY -->

{{< youtube wg76zGQhgZY >}}

### Case study of data storage for preservation of our archiving system at the National Geographic and Hydrographic Institute of Madagascar

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/THLVU8/)
<!-- - Vídeo https://www.youtube.com/watch?v=-KK0VfI54cw -->

{{< youtube -KK0VfI54cw >}}

### How Open Source solution help to build an scalable and adaptable environmental decision platform tools

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/BMZ7RD/)
<!-- - Vídeo https://www.youtube.com/watch?v=dVIlrM_fuyM -->

{{< youtube dVIlrM_fuyM >}}

### Visualising trajectories in 3D

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/QRJSLQ/)
<!-- - Vídeo https://www.youtube.com/watch?v=PyO22G1KkbY -->

{{< youtube PyO22G1KkbY >}}

### The Borked Supply Chain. How the Telekom brings FOSS Projects into Stable Production

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/DMD3EJ/)
<!-- - Vídeo https://www.youtube.com/watch?v=7CGs7EmxBj4 -->

{{< youtube 7CGs7EmxBj4 >}}

### UN Open GIS Initiative: Use cases of Open Mobile GIS solutions in the context UN peace operations

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/YESFDG/)
<!-- - Vídeo https://www.youtube.com/watch?v=ff8b1v_td6Q -->

{{< youtube ff8b1v_td6Q >}}

### CityJSON: 3D city models for everyone

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/C3LGZ9/)
<!-- - Vídeo https://www.youtube.com/watch?v=vW6L1L4fitY -->

{{< youtube vW6L1L4fitY >}}

### QGIS MetaSearch: lowering the barrier to geospatial data discovery in the desktop

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/FNTU8J/)
<!-- - Vídeo https://www.youtube.com/watch?v=X-46KrSYw0g -->

{{< youtube X-46KrSYw0g >}}

### 3D Urban data in QGIS

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/DRBF7F/)
<!-- - Vídeo https://www.youtube.com/watch?v=8WDrHxAKVuc -->

{{< youtube 8WDrHxAKVuc >}}

### Spatial analysis of cultural activities in Buenos Aires

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/ZGFLWX/)
<!-- - Vídeo https://www.youtube.com/watch?v=F7gFGGMsUxs -->

{{< youtube F7gFGGMsUxs >}}

### Giswater : open source management tool for water networks

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/9JVAGK/)
- Vídeo https://www.youtube.com/watch?v=6drMuVj9WX8

{{< youtube 6drMuVj9WX8 >}}

### An implementation of FOSS4G - QGIS, QField and Vector Tiles for rural water supply management in Rwanda

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/3HWXNF/)
<!-- - Vídeo https://www.youtube.com/watch?v=1Y2HbWkapDA -->

{{< youtube 1Y2HbWkapDA >}}

### QGIS, Football, what else ?

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/AXPXKY/)
<!-- - Vídeo https://www.youtube.com/watch?v=5J0JFdq5zjg -->

{{< youtube 5J0JFdq5zjg >}}

### Parks & Equity: Using PyQGIS and Rgeoda for Evaluating Localized Equitable Park Access across the United States

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/JUDYZ3/)
<!-- - Vídeo https://www.youtube.com/watch?v=--13T-IVLxQ -->

{{< youtube --13T-IVLxQ >}}


##  Track – Open data

### WAPLUGIN: Water Accounting and Productivity Plugin for QGIS

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/YCNA7B/)
- Vídeo https://www.youtube.com/watch?v=wzqxO-2u7vk

{{< youtube wzqxO-2u7vk >}}

## Track – Community / OSGeo

### Building Open Source Community in Pandemic

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/3MNBBB/)
<!-- - Vídeo https://www.youtube.com/watch?v=mZgkPXG0R5w -->

{{< youtube mZgkPXG0R5w >}}

### News from GeoStyler

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/EL79CV/)
<!-- - Vídeo https://www.youtube.com/watch?v=1vI5CEtgaO8 -->

{{< youtube 1vI5CEtgaO8 >}}

## Track – Transition to FOSS4G

### Free and Open-Source Molusce Plugin for landcover Anlysis and Prediction; a case study in Banepa and Dhulikhee municipality, Nepal

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/HSLTAH/)
<!-- - Vídeo https://www.youtube.com/watch?v=tjzs_9QF1zA -->

{{< youtube tjzs_9QF1zA >}}

### Large scale QGIS deployments : feedback and lessons learned

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/KFMUF9/)
<!-- - Vídeo https://www.youtube.com/watch?v=hO6bseu1Fjg -->

{{< youtube hO6bseu1Fjg >}}

### GIS for Small Cities - A Hybrid Approach

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/TAKQQ7/)
<!-- - Vídeo https://www.youtube.com/watch?v=ZH8KtH1ZYUM -->

{{< youtube ZH8KtH1ZYUM >}}

## Track – Academic

### GEE Timeseries Explorer for QGIS – Instant access to petabytes of Earth observation data

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/CZNK9S/)
<!-- - Vídeo https://www.youtube.com/watch?v=2y8CDmDUpWo -->

{{< youtube 2y8CDmDUpWo >}}

### Using FOSS to teach university GIS courses online: lessons learned during a pandemic

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/JUUX3U/)
<!-- - Vídeo https://www.youtube.com/watch?v=3pXQ21auk4M -->

{{< youtube 3pXQ21auk4M >}}

## Track – Education & research

### Spatial interaction models, internal migration and FOSS4GIS

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/ULZRP3/)
<!-- - Vídeo https://www.youtube.com/watch?v=V0Co-OWLFwU -->

{{< youtube V0Co-OWLFwU >}}

### The status of GIS teaching in South African secondary schools including an evaluation of Free and Open Source Software for Geospatial (FOSS4G) using QGIS software and OpenStreetMap (OSM) data as teac

- [Abstract](https://callforpapers.2021.foss4g.org/foss4g2021/talk/GWMAKE/)
<!-- - Vídeo https://www.youtube.com/watch?v=weR7TzFcyFk -->

{{< youtube weR7TzFcyFk >}}

