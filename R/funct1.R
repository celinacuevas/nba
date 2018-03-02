#' NBA Leading Scorer Function
#'
#' This function allows you to determine the leading scorer in the NBA for any given year.
#' @param year Inputs year for output of leading scorer
#' @keywords nba highscorer stats player
#' @export
#' @examples
#' highscorer()

highscorer <- function(year){
  yeardf<-dplyr::filter(nba, Year==year)
  yeardf<-dplyr::arrange(yeardf, desc(PTS))
  topplayer<-yeardf[1,"Player"]
  return(topplayer)
}

head(highscorer(2017),10)

