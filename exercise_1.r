library(tidyverse)
library(tibble)
library(ggplot2)
library(dplyr)

cwur <- read.csv("cwurData.csv")
cwurdf <- data.frame(cwur)

names(cwurdf)

times <- read.csv("timesData.csv")
timesdf <- data.frame(times)

names(timesdf)

#comparing the research(publications) and citations from both the center for 
#world ranking dataset and the times dataset between canadian universities 
#and American universities only.

#canadian universities from the cwur dataset
cwurfilter <- cwurdf %>% filter(country == "Canada")
ggplot(cwurfilter, aes(x=publications, y=citations)) + geom_point(aes(color = year)) +
  geom_smooth(method = "loess", formula = y~x) + facet_wrap(year~.) + labs(title = "Publications Vs Citations
in Canadian Universities from the
cwur dataset")


#american universities from the cwur dataset
amerfilter <- cwurdf %>% filter(country =="USA")
ggplot(amerfilter, aes(x=publications, y=citations)) + geom_point(aes(color = year)) +
  geom_smooth(method = "loess", formula = y~x) + facet_wrap(year~.) + labs(title = "Publications Vs Citations
in American Universities from the
cwur dataset")


#canadian universities from the times dataset
timesfilter <- timesdf %>% filter(country == "Canada")
ggplot(timesfilter, aes(x=research, y=citations)) + geom_point(aes(color = year)) +
  geom_smooth(method = "loess", formula = y~x) + facet_wrap(year~.) + labs(title = "Research Vs Citations
in Canadian Universities from the
times dataset")


#american universities from the times dataset
amertimes <- timesdf %>% filter(country == "United States of America")
ggplot(amertimes, aes(x=research, y=citations)) + geom_point(aes(color = year)) +
  geom_smooth(method = "loess", formula = y~x) + facet_wrap(year~.) + labs(title = "Research Vs Citations
in American Universities from the
times dataset")
