library(tidyverse)
library(tibble)
library(ggplot2)
library(dplyr)

times <- read.csv("timesData.csv")
timesdf <- data.frame(times)

names(timesdf)

shangai <- read.csv("shanghaiData.csv")
shangaidf <- data.frame(shangai)

names(shangaidf)

cwur <- read.csv("cwurData.csv")
cwurdf <- data.frame(cwur)

names(cwurdf)

#comparing the mean of the total scores from three datasets(cwur, shangai and times) 
#used to determine the world ranking of universities in the year 2014.


timesfilter <- timesdf %>% filter(year == "2014")
timesnumeric <- as.numeric(timesfilter$total_score)
timesomit <- na.omit(timesnumeric)
timesmean <- mean(timesomit)
timesmean

cwurfilter <- cwurdf %>% filter(year == "2014")
cwurnumeric <- as.numeric(cwurfilter$score)
cwuromit <- na.omit(cwurnumeric)
cwurmean <- mean(cwuromit)
cwurmean

shangaifilter <- shangaidf %>% filter(year == "2014")
shangainumeric <- as.numeric(shangaifilter$total_score)
shangaiomit <- na.omit(shangainumeric)
shangaimean <- mean(shangaiomit) 
shangaimean


