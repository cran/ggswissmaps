## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  dev = "png"
)

## -----------------------------------------------------------------------------
library(ggswissmaps)
# str(shp_sf)  # Very long output...

class(shp_sf)
length(shp_sf)
lapply(shp_sf, class)
names(shp_sf)

## -----------------------------------------------------------------------------
library(ggplot2)
ggplot(shp_sf[["g1k15"]]) + geom_sf()

## -----------------------------------------------------------------------------
ggplot(shp_sf[["g1k15"]]) + 
  geom_sf(fill = NA) + 
  ggswissmaps::theme_white_f()

## -----------------------------------------------------------------------------
library(sf)
st_crs(shp_sf[[1]])

## -----------------------------------------------------------------------------
tmp <- st_transform(shp_sf[[1]], crs = 2056)
st_crs(tmp)

