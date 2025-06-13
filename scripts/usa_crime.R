pacman::p_load(tidyverse, gganimate, inspectdf, gtExtras)
usa_crime_data <- read_csv("./projects/bash/crime_data/Crime_Data_from_2020_to_Present.csv")
glimpse(usa_crime_data)
inspectdf::show_plot(inspect_na(usa_crime_data))
