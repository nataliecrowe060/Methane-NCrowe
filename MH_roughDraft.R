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

data<- data.frame(value= rnorm(1000, 73.3, 4.30))

ggplot(data, aes(x=value))+
  geom_histogram(binwidth = 1)+
  labs( x= "Life Expectancy", y= "count", main= "France Life Expectancy")

