#Rnorm Practice- N.Crowe

library(hector)
library(ggplot2)
library(dplyr)
library(gapminder)
France<- gapminder %>%
  filter(country== "France") %>%
  summarise(meanlifeExp= mean(lifeExp), 
            sdlifeExp= sd(lifeExp)) 

norm_France<- rnorm(1000, 74.3, 4.30)
hist(norm_France)
