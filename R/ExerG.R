#' R DATA ANALYSIS
#'
#'  In this work, an analysis and different exercises are carried out with data from the nycflights13 package, using additional libraries such as Tidyverse, knitr, among other additional functions
#'
#' @param x The exercise number (ranging from 1 to 6).
#' @return The solution for the specified exercise.
#' @export
#'
#' @import tidyverse
#' @import nycflights13: This library provides flight data to analyze and solve the proposed exercises
#' @import knitr
#'
#' @examples
#' # Retrieve the solution for exercise 1
#' ExerG1
#'
#' # Retrieve the solution for exercise 6
#' ExerG6
# Function to select questions and answers based on the exercise number

ExerG<- function(x){
  if (x==1){
    return(ExerG1())

  }
  else if (x==2){
    return(ExerG2())
    }
  else if (x==3){
    return(ExerG3())
  }
  else if (x==4){
    return(ExerG4())
  }
  else if (x==5){
    return(ExerG5())
  }
  else if (x==6){
    return(ExerG6())
  }
  else{
    print("don't find")
  }
}

