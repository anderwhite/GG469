# This code is designed to create an interactive Leaflet map. 
# This document is created in the language R.

library(leaflet)
library(htmlwidgets)
library(foreign)
library(sf)
library(rgdal)

setwd("C:/batcave/GG469/layers")

dsn <- "Leaflet_Features_WGS84.shp"
cb5=readOGR(dsn)

final_test <- st_read("C:/batcave/GG469/layers/Leaflet_Features_WGS84.shp")

m <- leaflet(final_test) %>% addPolygons(color="#444444", weight= 1, smoothFactor= 0.5, opacity=1.0) %>%
    addMarkers(lng=-79.772886, lat=43.721614, label="core")%>%
    addMarkers(lng=-79.744383, lat=43.73305, label="corridor") %>%
    addMarkers(lng=-79.778544, lat=43.761336, label="stepping stone")

saveWidget(m, file="map1.html")
