ExerG6 <- function(x){

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

  cat("5.7.1 Exercises: item 2: Which plane (tailnum) has the worst on-time record?")
  cat("\n")

  cat("The dataset is categorized by aircraft tail number (tailnum). By
  employing the summarize() function, we compute summary statistics for every
  group (aircraft). Inside the summarize() function: (total_flights) is calculated
  through the n() function, yielding the aggregate count of flights for each
  aircraft. (punctual_flights) is derived using the sum() function, counting
  flights in which the arrival delay (arr_delay) is less than or equal to 0
  (indicating punctual or early arrivals). (punctuality_percentage) is computed
  as the proportion of punctual flights to total flights, then multiplied by
  100 to express it as a percentage.

  Subsequent to the summarize() operation, we employ arrange() to arrange the
  groups (aircraft) based on their punctuality percentages in ascending sequence.
  This results in the aircraft with the lowest punctuality percentages being
  presented first. filter() is utilized to eliminate rows where the
  punctuality_percentage is unavailable (NA). The resultant dataset is assigned to
  the variable my_DF10.\n")
  cat("\n")

  my_DF10 <- flights %>%group_by(tailnum) %>%summarize( total_flights = n(),
    punctual_flights = sum(arr_delay <= 0, na.rm = TRUE),punctuality_percentage
    =(punctual_flights / total_flights) * 100) %>%arrange(punctuality_percentage) %>%
    filter(!is.na (punctuality_percentage))
  my_DF10
  cat(" my_DF10 <- flights %>%group_by(tailnum) %>%summarize( total_flights = n(),
    punctual_flights = sum(arr_delay <= 0, na.rm = TRUE),punctuality_percentage
    =(punctual_flights / total_flights) * 100) %>%arrange(punctuality_percentage) %>%
    filter(!is.na (punctuality_percentage))
  my_DF10\n")
  cat("\n")
  print(kable(my_DF10[1:10, c(1,2,3,4)],
              caption = "In this table you can see my_DF10 information",
              align = "c"))
}
