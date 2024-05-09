#' World Population Data 1950-2020
#'
#' This dataset contains world population data sourced from the United Nations
#' for the years 1950-2020. The data is a subset to only include Country, Year,
#' and Population (given in thousands).
#' Connor Phillips downloaded the data on 5-6/24 and selected a portion of the
#' data for use in this package, which uses a function to graph population data
#' for a country given as a parameter.
#'
#' @format A data frame with 16685 observations with 3 columns.
#' \describe{
#'    \item{Country}{The Country name for the given population}
#'    \item{Year}{The year for the population recording}
#'    \item{Population}{The annual total population (in thousands)}
#'
#' }
"WorldPopulation"
