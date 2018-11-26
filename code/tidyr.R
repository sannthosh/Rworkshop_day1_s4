install.packages("tidyr")
library(tidyr)

#library(dplyr)
mtcars
class(mtcars)
head(mtcars)
tail(mtcars)
mtcars[,11]

#display One column
mtcars$mpg
class(mtcars$mpg)
#Display rows
mtcars[1,]
mtcars[1:5,]
mtcars[c(1,6,7),] # to display specified random rows???

#Display columns
mtcars[,2]
mtcars[,1:5]
mtcars[,c(3,5,7)] # to display specified random columns???

mtcars$car <- rownames(mtcars)
mtcars <- mtcars[, c(12, 1:11)]
head(mtcars)

#gather ... converts the wide format to longer

mtcarsNew <- mtcars %>% gather(attribute, value, -car)
head(mtcarsNew)
tail(mtcarsNew)

#Spread ...... converts the longer format to wide
mtcarsSpread <- mtcarsNew %>% spread(attribute, value)
head(mtcarsSpread)

#Unite

data <- read.csv("dateevent.csv")
data

dataNew <- data %>%
  unite(datehour, date, hour, sep = ' ') %>%
  unite(datetime, datehour, min, second, sep = ':')
dataNew

#Separate
data1 <- dataNew %>% 
  separate(datetime, c('date', 'time'), sep = ' ') %>% 
  separate(time, c('hour', 'min', 'second'), sep = ':')
data1


