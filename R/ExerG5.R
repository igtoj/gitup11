ExerG5 <- function(x){

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


  cat("5.6.7 Exercises: item 1: Brainstorm at least 5 different ways to assess the
  typical characteristics of a group of fligh.")
  cat("\n")

  cat("This summary outlines different analyses related to flight delays:

- Median Arrival Delay: Finding the central value representing the typical
delay experienced upon arrival by calculating the median arrival delay for a
group of flights.

- Average Departure Delay: Calculating the average delay before departure for
a group of flights. This offers insight into the typical delay experienced
before takeoff.

- Punctuality Percentage: Calculating the percentage of flights that are
punctual (no arrival delay) and comparing it to the percentage of flights
significantly delayed (2 hours late). This contrasts on-time flights with
extremely delayed ones.

- Proportion of Flights with Specific Delays: Determining the percentage of
flights arriving either significantly early or late (15 minutes, 30 minutes,
or 2 hours). This provides insight into the distribution of delay scenarios
within the group.

- Arrival Delay Distribution: Creating a histogram or density plot showcasing
the distribution of arrival delays across all flights. This visualization
identifies common delay ranges and outliers.")
  cat("\n")
}
