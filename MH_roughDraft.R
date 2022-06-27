#Rnorm Practice- N.Crowe

library(hector)
library(ggplot2)
library(dplyr)
library(gapminder)

France<- gapminder %>%
  filter(country== "France") %>%
  summarise(meanlifeExp= mean(lifeExp), 
            sdlifeExp= sd(lifeExp)) 

data<- data.frame(value= rnorm(1000, 73.3, 4.30))

ggplot(data, aes(x=value))+
  geom_histogram(binwidth = 1)+
  labs( x= "Life Expectancy", y= "count", main= "France Life Expectancy")

#Hector attempt
library(hector)
library(ggplot2)
library(dplyr)
ini_file <- system.file("input/hector_ssp245.ini", package = "hector")
core <- newcore(ini_file)
run(core)
results<- fetchvars(core, 1745:2100, c(EMISSIONS_CH4()))

emiss<- results %>%
  select(year, value, units) %>%
  summarise(meanValue= mean(value), 
            sdValue= sd(value))

data<- data.frame(value= rnorm(1000, 166.1228, 136.1127))

ggplot(data, aes(x=value))+
  geom_histogram(binwidth = 1)+
  labs( x= "Emission Level", y= "count per year", main= "C02 Emissions By Year")

install.packages('tidyr', repos='http://cran.us.r-project.org')
library(tidyr)
