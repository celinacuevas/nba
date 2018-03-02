#' NBA Oldest Player Scorer Function
#'
#' This function allows you to determine the oldest player in the NBA for any given year.
#' @param year Inputs year for output of oldest scorer
#' @keywords nba oldest age player
#' @export
#' @examples
#' oldest()

oldest <- function(year){
  yeardf<-dplyr::filter(nba, Year==year)
  yeardf<-dplyr::arrange(yeardf, desc(Age))
  oldestplayer<-yeardf[1,"Player"]
  return(oldestplayer)
}

head(oldest(2017),10)
