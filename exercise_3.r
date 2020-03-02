library(tidyverse)
library(tibble)
library(ggplot2)
library(dplyr)

cwur <- read.csv("cwurData.csv")
cwurdf <- data.frame(cwur)

names(cwurdf)

#To display the quality of education and quality of faculty using the cwur dataset
#Using universities in the United Kingdom, USA, France,Switzerland and Canada.
#between the year 2012-2015

unitedkingdom <- cwurdf %>% filter(country == "United Kingdom")
ggplot(unitedkingdom, aes(x=quality_of_education, y=quality_of_faculty)) + 
  geom_point() + geom_smooth(method="lm") + facet_grid(year~.) + labs(title = "UNIVERSITIES IN THE UNITED KINGDOM")

usa <- cwurdf %>% filter(country == "USA")
ggplot(usa, aes(x=quality_of_education, y=quality_of_faculty)) + 
  geom_point() + geom_smooth(method="lm") + facet_grid(year~.) + labs(title = "UNIVERSITIES IN USA")

france <- cwurdf %>% filter(country == "France")
ggplot(france, aes(x=quality_of_education, y=quality_of_faculty)) + 
  geom_point() + geom_smooth(method="lm") + facet_grid(year~.) + labs(title = "UNIVERSITIES IN FRANCE")

switzerland <- cwurdf %>% filter(country == "Switzerland")
ggplot(switzerland, aes(x=quality_of_education, y=quality_of_faculty)) + 
  geom_point() + geom_smooth(method="lm") + facet_grid(year~.) + labs(title = "UNIVERSITIES IN SWITZERLAND")

switzerland <- cwurdf %>% filter(country == "Canada")
ggplot(switzerland, aes(x=quality_of_education, y=quality_of_faculty)) + 
  geom_point() + geom_smooth(method="lm") + facet_grid(year~.) + labs(title = "UNIVERSITIES IN CANADA")

