library(tidyverse)
library(tibble)
library(ggplot2)
educationcsv <- read.csv(file = "education_expenditure_supplementary_data.csv")
timesdf <- read.csv(file = "timesData.csv")

sub <- function(data, vars){
  i = length(vars)
  x = 1
  df = NA
  while(i >= x){
    df = rbind(df, filter(data, country==vars[x]))
    x = x + 1
  }
  na.omit(df)
}

educ <- select(educationcsv, country, direct_expenditure_type, X2011)
educ[order(educ$X2011, decreasing = TRUE),] %>% na.omit() -> educ
filter(educ, direct_expenditure_type=="Total") -> educ
countries <- educ[1:20,]$country 

times_data <- filter(timesdf, year==2015)
clist <- str_replace_all(countries, "United States", "United States of America")
sub(times_data, clist) -> times_data
ggplot(data = na.omit(times_data), mapping = aes(country)) +
  geom_bar() +
  xlab(label = "Country") +
  ylab(label = "Total Institions") +
  theme(axis.text.x = element_text(angle=60, vjust=0.6))
