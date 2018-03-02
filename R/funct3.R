#' NBA Correaltion Matrix Function
#'
#' This function allows you to correlate all numeric variables in the NBA dataset for any given year.
#' @param year Inputs year for output of correlation matrix
#' @keywords nba correlation
#' @export
#' @examples
#' cor_nba()

cor_nba <- function(year){
  num_nba<-purrr::keep(nba, is.numeric) 
  correlate<-cor(num_nba, use="complete.obs")
  return(correlate)
}

head(cor_nba(2016),10)
