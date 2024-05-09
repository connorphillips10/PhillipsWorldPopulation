#' Country Population Function
#'
#' Because this is a very simple function, my explanation is short. This
#' paragraph should explain everything you need to know.
#'
#'This is a function that will output a line graph of a country's population for
#'the years 1950-2020. Population is given in thousands. The country name must
#'be given to the function as a string.
#'
#' @param country : a string

library(ggplot2)
library(dplyr)

CountryPopulation <- function(country) {
  country <- as.character(country)
  if(!country %in% WorldPopulation$Country) {
    stop("Error - This country is not in the referenced data.")
  }
  countryFilt <- WorldPopulation %>%
    filter(Country == country)

  ggplot(countryFilt, aes(x = Year, y = Population)) +
    geom_line(size = 1) +
    labs(title = country,
         y = "Population (Thousands)") +
    theme_bw()
}


# e. Add a unit test to the package to check if a country name entered is in the cleaned data file
# WorldPopulation. If the country is not present, then the function CountryPopulation should return an
# error.
# usethis::use_testthat()
