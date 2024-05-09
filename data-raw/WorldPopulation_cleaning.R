# c. Using your cleaning script from Question 2b, add the cleaned version of the
# world population data to the package. Call this data set WorldPopulation, ensure
# it gives only the columns as given in Question 2b. Make sure to document
# the data set.

library(tidyverse)
library(readxl)
library(lubridate)

worldPop_df <- data.frame(read_excel(path = "data-raw/World_Population.xlsx", sheet = "ESTIMATES", range = 'A17:BZ306'))

WorldPopulation = worldPop_df %>%
  mutate(Country = Region..subregion..country.or.area..) %>%
  filter(Type == "Country/Area") %>%
  select(Country, starts_with("X")) %>%
  pivot_longer(X1950:X2020,
               names_to = "Year",
               values_to = "Population") %>%
  mutate(Year = as.numeric(str_sub(Year, start = 2))) %>%
  mutate(Year = make_date(year = Year)) %>%
  mutate(Population = as.integer(Population))

usethis::use_data(WorldPopulation, overwrite = TRUE)
