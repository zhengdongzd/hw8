#' Calculate the quantiles of one numeric variable
#'
#' @param x numeric
#'
#' @return numeric
#' @export
#'
#' @examples
#' #' qdiff1(gapminder$lifeExp)
qdiff1 <- function(x, probs) {
  if(!is.numeric(x)) {
    stop('This function only works for numeric input!\n',
         'You have provided an object of class: ', class(x))
  }
  the_quantiles <- quantile(x = x, probs = probs)
  max(the_quantiles) - min(the_quantiles)
}