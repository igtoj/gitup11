ExerG4 <- function(x){

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
  cat("5.5.2 Exercises: items 1: Currently dep_time and sched_dep_time are
      convenient to look at, but hard to compute with because they're not
      really continuous numbers. Convert them to a more convenient representation
      of number of minutes since midnight.\n")
  cat("\n")
  cat("The mutate() function is employed to introduce two additional columns:
      dep_time_mins and sched_dep_time_mins. These columns indicate the
      departure time and scheduled departure time, both translated into minutes
      starting from midnight. The computation (dep_time %/% 100) * 60 + dep_time
      %% 100 transforms the given hour and minutes into a total count of minutes.\n")
  cat("\n")

  my_DF8 <- flights %>% mutate( dep_time_mins = (dep_time %/% 100) * 60 +
            dep_time %% 100,sched_dep_time_mins = (sched_dep_time %/% 100) * 60
            + sched_dep_time %% 100)
  cat("my_DF8 <- flights %>% mutate( dep_time_mins = (dep_time %/% 100) * 60 +
            dep_time %% 100,sched_dep_time_mins = (sched_dep_time %/% 100) * 60
            + sched_dep_time %% 100)")
  print(kable(my_DF8[1:10, c(20,21)],
              caption = "In this table you can see my_DF8 information",
              align = "c"))
  cat("\n")

  cat("5.5.2 Exercises: items 2: Compare air_time with arr_time - dep_time.
      What do you expect to see? What do you see? What do you need to do to
      fix it?\n")

  cat("\n")
  cat("Using the mutate() function, the time difference between arrival and
      departure is calculated in minutes (arr_time - dep_time_mins). Then, the
      filter() function is used to remove rows with missing values in air_time
      or the time difference. Finally, the select() function is applied to keep
      only two columns: air_time (flight duration) and arr_dep_time_diff
      (time gap between arrival and departure in minutes).\n")
  cat("\n")

  my_DF9 <- my_DF8%>% mutate(a_dep_t_diff = arr_time - dep_time_mins) %>%
    filter(!is.na(air_time) & !is.na(a_dep_t_diff)) %>% select(air_time,
    arr_time,a_dep_t_diff)
  cat(" my_DF9 <- my_DF8%>% mutate(a_dep_t_diff = arr_time - dep_time_mins) %>%
    filter(!is.na(air_time) & !is.na(a_dep_t_diff)) %>% select(air_time,
    arr_time,a_dep_t_diff)")
  print(kable(my_DF9[1:10, c(1,2,3)],
              caption = "In this table you can see my_DF9 information",
              align = "c"))
  cat("\n")
}

