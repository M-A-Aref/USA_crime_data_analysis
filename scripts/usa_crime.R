# Loading the required packages
pacman::p_load(tidyverse, gganimate, inspectdf, gtExtras)
# Loading the data
usa_crime_data <- read_csv("./projects/bash/crime_data/Crime_Data_from_2020_to_Present.csv")
# Overview the data
glimpse(usa_crime_data)
summary(usa_crime_data)
# Determine the NAN values
inspectdf::show_plot(inspect_na(usa_crime_data))
# Drop columns with NAN more than 50% of the data
usa_crime_data <- usa_crime_data %>% dplyr::select(-c(`Crm Cd 3`,`Crm Cd 4`,`Crm Cd 2`,`Cross Street`))
usa_crime_data <- usa_crime_data %>% select(- `Weapon Used Cd`)
usa_crime_data$`Weapon Desc` <- str_replace(usa_crime_data$`Weapon Desc`, 'NA', 'No weapon')
usa_crime_data$`Weapon Desc`
usa_crime_data$`Weapon Desc` <-  usa_crime_data$`Weapon Desc` %>% str_replace_na(replacement = "No weapon")
usa_crime_data$`Vict Sex` %>%   summary()
usa_crime_data$`Vict Sex` <- as.factor(usa_crime_data$`Vict Sex`)
usa_crime_data$`AREA NAME` <- as.factor(usa_crime_data$`AREA NAME`)
usa_crime_data$`DATE OCC` <- as.Date(usa_crime_data$`DATE OCC`)

