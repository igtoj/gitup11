ExerG1 <- function(x){

library(nycflights13)
library(tidyverse)
library(knitr)
exercise <- nycflights13::flights

my_DF1  <- filter(exercise, arr_delay >="2")

  cat("library(nycflights13)\n")
  cat("library(tidyverse)\n")
  cat("library(knitr)\n")
  cat("\n")
  cat("*Download the libraries, (tidyverse) which promotes the concept of
      (sorted data), (nycflights13) which provides us with flight data to
      analyze and library(knitr) it allows you to display data tables in
      an orderly and eye-pleasing manner.")
  cat("exercise <- nycflights13::flights\n")
  cat("\n")
  cat("5.2.4 Exercises: items 1: Use the (filter) function to search for
  flights with an arrival delay of two hours or more.\n")
  cat("\n")
  my_DF1  <- filter(exercise, arr_delay >=2)
  cat(" my_DF1  <- filter(exercise, arr_delay >=2)")
  print(kable(my_DF1[1:10, c(1, 14, 13, 9)],
              caption = "The table we get after running the code corresponds to
              my_DF1",
              align = "c"))
  cat("\n")
  cat("5.2.4 Exercises: items 2: I flew to Houston (IAH or HOU), I choose the
      IAH airport and filter it with the (filter) function.\n")
  cat("\n")
  my_DF2  <- filter(exercise, dest =="IAH")
  cat("my_DF2  <- filter(exercise, dest ==(IAH)")
  print(kable(my_DF2[1:10, c(1, 13, 14)],
              caption = "The table we get after running the code corresponds
              to my_DF2",
              align = "c"))
}



