#' theme_white_f is a ggplot2 theme function that can be added to a ggplot2 object  
#' to eliminate axes, ticks and put white background
#' 
#' @param base_size base font size
#' @param base_family base font family
#' @export
theme_white_f <- function(base_size = 12, base_family = ""){
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) %+replace%
    ggplot2::theme(
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      panel.background = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank(),
      #  strip.background = element_blank(),
      plot.background = ggplot2::element_blank(),
      axis.title = ggplot2::element_blank(),
      axis.text = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),
      panel.grid = ggplot2::element_blank()
    )
  }