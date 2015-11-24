#' Select countries with the highest gdpPercap in a particular year
#'
#' @param input_year numeric
#' @import dplyr
#' @import gapminder
#' @return dataframe
#' @export
#'
#' @examples
#' #' Top20GdpPercap(2002)
Top20GdpPercap <- function(input_year) {
  if(!is.numeric(input_year)) {
    stop('This function only works for numeric input!\n',
         'You have provided an object of class: ', class(x))
  }else if(!input_year %in% unique(gapminder::gapminder$year)){
    stop('The input year is not available in the dataset!\n',
         'We have data in year: ', paste(unique(gapminder::gapminder$year), collapse = ", "))
  }else if(length(input_year) > 1){
    stop('Please provide only 1 year!')
  }
  lifet <- gapminder::gapminder %>% filter(year == input_year) %>% droplevels() %>%
    select(country, gdpPercap) %>% arrange(-gdpPercap)

  knitr::kable(lifet[1:20, ])
}
