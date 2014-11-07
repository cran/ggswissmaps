#' A list with 8 maps of Switzerland's territory at various levels.
#'
#' Every element of the list is a ggplot2 object which is
#' already ready to plot. 
#' \itemize{
#'   \item distretti. Swiss districts
#'   \item comuni. Swiss communes (2014)
#'   \item boh. Don't know
#'   \item boh2. Don't know 2
#'   \item cantoni. Swiss cantons
#'   \item ch. Swiss national boundaries
#'   \item gr. Swiss big regions (NUTS3)
#' }
#'
#' @format A list with 16 ggplot2 maps with swiss territory
#' @source \url{http://www.bfs.admin.ch/bfs/portal/fr/index/dienstleistungen/geostat/datenbeschreibung.html}
#' @examples
#' data(maps)
#' maps[[1]]
#' names(maps)
#' maps[["cantoni"]]
#' str(maps[["cantoni"]])
#' str(maps[["cantoni"]]$data)
#' @name maps
NULL



#' Offers various swiss maps as ggplot2 objects.
#'
#' Offers various swiss maps as ggplot2 objects and gives the possibility
#' to add layers of data on the maps. Data are publicly available from the
#' swiss federal statistical office.
#'
#' There are only two objects in package \pkg{ggswissmaps}:
#' \code{theme_white} (for white background of ggplot2 objects) and \code{maps} (a list of 8 swiss maps).
#' 
#'
#' @docType package
#' @name ggswissmaps
NULL


#' theme_white is a ggplot2 theme object and can be added to a ggplot2 object  
#' to eliminate axes, ticks and put white background
theme_white <- theme(
  axis.title=element_blank(),
  axis.text=element_blank(),
  axis.ticks=element_blank(),
  axis.line=element_blank(),
  panel.background=element_blank(),
  panel.border=element_blank(),
  panel.margin=element_blank(),
  panel.grid=element_blank()
)
#' @name theme_white
NULL
