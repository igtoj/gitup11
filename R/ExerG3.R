ExerG3 <- function(x){

  library(nycflights13)
  library(tidyverse)
  library(knitr)
  exercise <- nycflights13::flights


  cat("library(nycflights13)\n")
  cat("library(tidyverse)\n")
  cat("library(knitr)\n")
  cat("\n")
  cat("*Download the libraries, (tidyverse) which promotes the concept of (sorted data), (nycflights13) which provides us with flight data to analyze and library(knitr) it allows you to display data tables in an orderly and eye-pleasing manner.")
  cat("\n")
  cat("exercise <- nycflights13::flights\n")
  cat("\n")

  cat("5.4.1 Exercises: items 2: What happens if you include the name of a
  variable multiple times in a select() call?\n")
  cat("\n")
  cat("Answer: Variable appears repeatedly in a result\n")
  cat("\n")

  cat("5.4.1 Exercises: items 3:What does the any_of() function do? Why might
  it be helpful in conjunction with this vector?\n")
  cat("\n")
  cat("Answer: The any_of() function is used to select columns from a data frame based
      on a character vector of column names, and, yes, it could be useful for
      that line of code.\n")
  cat("\n")

  cat("5.4.1 Exercises: items 4: Does the result of running the following code
      surprise you? How do the select helpers deal whit case by default?
      How can you change that default?\n")
  cat("\n")
  cat("Answer: This code selects the columns whose names contain the string
      (TIME) and which contain the text (TIME) in their cells as (dep_time),
      (sched_dep_time), (arr_time), (sched_arr_time), (air_time time_hour).\n")
  cat("\n")

}
