ExerG2 <- function(x){

  library(nycflights13)
  library(tidyverse)
  library(knitr)
  exercise <- nycflights13::flights



  cat("library(nycflights13)\n")
  cat("library(tidyverse)\n")
  cat("library(knitr)\n")
  cat("\n")
  cat("*Download the libraries, (tidyverse) which promotes the concept of
      (sorted data), (nycflights13) which provides us with flight data to
      analyze and library(knitr) it allows you to display data tables in an
      orderly and eye-pleasing manner.")
  cat("\n")
  cat("exercise <- nycflights13::flights\n")
  cat("\n")


  cat("5.3.1 Exercises: items 1: How could you use arrange() to sort all m
      issing values to the start? (Hint: use is.na()). As the help indicates,
      it´s used to check if the elements being parsed are missing values or NA.")
  cat("\n")
   my_DF3 <- flights %>% arrange(desc(is.na(dep_time)))
  cat("\n")
  cat("my_DF3 <- flights %>% arrange(desc(is.na(dep_time)))\n")
  cat("\n")
  print(kable(my_DF3[1:10, c(1, 4, 6,7,9,15)],
        caption = "In this table you can see my_DF3 information",
        align = "c"))
  cat("\n")

  cat("5.3.1 Exercises: items 2:Sort the flights to find the most delayed flights.
      Find the flights that left the earliest. For the development of
      this item we used the data from the colimna (arr_delay), these were
      ordered from longest to shortest delay.\n")
  my_DF4 <- flights %>% arrange(desc(arr_delay))
  cat("\n")
  cat("my_DF4 <- flights %>% arrange(desc(arr_delay)))\n")
  cat("\n")
  print(kable(my_DF4[1:10, c(1,9)],
              caption = "In this table you can see my_DF4 information",
              align = "c"))
  cat("\n")


  cat("5.3.1 Exercises: items 3:Sort the flights to find the fastest ones (higher speed).At this point
      we use the (mutate) function that helps us to add a new column called
    (speed), where the data will be assigned between (distance / air_time),
      once the data is obtained, we arrange them from highest to lowest with
      the help of the (arrange) and (desc) function.\n")
  my_DF5 <- flights %>% mutate(speed = distance / air_time)%>%arrange((desc(speed)))
  cat("\n")
  cat("my_DF5 <- flights %>% mutate(speed = distance / air_time)%>%
      arrange((desc(speed)))\n")
  cat("\n")
  print(kable(my_DF5[1:10, c(14,15,16,20)],
              caption = "In this table you can see my_DF5 information",
              align = "c"))
  cat("\n")


  cat("5.3.1 Exercises: items 4:Which are the farthest and the shortest flights?For both cases use the
      (arrange) function to sort the data and use the (distance) column
      provided by the library(nycflights13), in the case of the farthest
      flights sort the data from farthest to shortest with the (desc)
      function and for the shortest flights sort them from shortest to longest.\n")
  my_DF6 <- flights %>% arrange(desc(distance))
  cat("\n")
  cat("my_DF6 <- flights %>% arrange(desc(distance))\n")
  cat("\n")
  print(kable(my_DF6[1:10, c(13,14,16)],
              caption = "In this table you can see my_DF6 information",
              align = "c"))
  cat("\n")

  my_DF7 <- flights %>% arrange(distance)
  cat("\n")
  cat("my_DF7 <- flights %>% arrange(distance)\n")
  print(kable(my_DF7[1:10, c(13,14,16)],
              caption = "In this table you can see my_DF7 information",
              align = "c"))
  cat("\n")
}


