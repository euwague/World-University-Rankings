library(tidyverse)
library(tibble)
library(ggplot2)
library(dplyr)

shangai <- read.csv("shanghaiData.csv")
shangaidf <- data.frame(shangai)

names(shangaidf)

#To show the N & S scores based on the number of papers published in Nature
#and science...
#using the top 100 univerities in the year 2015

shangai2015 <- shangaidf %>% filter(year == "2015")
shangaihead <- head(shangai2015,100)

ggplot(shangaihead, aes(x=ns)) + geom_histogram(aes(y=..density..), binwidth = .9) + 
  geom_density(alpha=.2, fill = "red")

#To show the hici scores based on the number of Highly Cited Researchers selected 
#by Thomson Reuters
#using the top 100 univerities in the year 2015

ggplot(shangaihead, aes(x=hici)) + geom_histogram(aes(y=..density..), binwidth = .9) + 
  geom_density(alpha=.2, fill = "blue")


#To show the pub scores based on total number of papers indexed in the Science 
#Citation Index-Expanded and Social Science Citation Index
#using the top 100 univerities from the year 2015

ggplot(shangaihead, aes(x=pub)) + geom_histogram(aes(y=..density..), binwidth = .9) + 
  geom_density(alpha=.2, fill = "green")


#To show the pcp scores the weighted scores of the above five indicators 
#divided by the number of full time academic staff
#using the top 100 univerities from the year 2015

ggplot(shangaihead, aes(x=pcp)) + geom_histogram(aes(y=..density..), binwidth = .9) + 
  geom_density(alpha=.2, fill = "yellow")
