library(tidyverse)
library(tibble)
library(ggplot2)
library(dplyr)

times <- read.csv("timesData.csv")
timesdf <- data.frame(times)


#To show the incomes in canadian universities between 2011-2016
b <- timesdf %>% mutate(income = as.character(income)) %>% 
  mutate(income = as.numeric(income))%>% filter(country == "Canada")

v <- na.omit(b)

ggplot(v, aes(x=income)) + geom_histogram() + facet_wrap(year~.)

#To show the incomes in german universities between 2011-2016
b1 <- timesdf %>% mutate(income = as.character(income)) %>% 
  mutate(income = as.numeric(income))%>% filter(country == "Germany")

v1 <- na.omit(b1)

ggplot(v1, aes(x=income)) + geom_histogram() + facet_wrap(year~.)

