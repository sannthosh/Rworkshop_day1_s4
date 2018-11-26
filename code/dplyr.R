# dplyr usage and verbs there are 5 verbs
#1- filter
#2- select, contains, start with, end with
#3- arrange
#4- mutate
#5- summarise, groupby, summary by

install.packages("dplyr")
library(dplyr)
library(ggplot2)

diamonds
nrow(diamonds)
head(diamonds)
nrow(diamonds)
#install.packages("nycflights13")

# application of filter function
df <- filter(diamonds, cut=='Good')

head(df)
nrow(df)
# application of filter function
df <- filter(diamonds, price > 326 & price < 400)

head(df)
dim(df)

# select function
df <- select(diamonds, carat, cut, color, clarity, depth, price)

head(df)

# mutate function
df1 <- mutate(diamonds, per_carat_p = price/carat)

head(df1)

# arrange function
df<-arrange(diamonds,price)
head(df)
tail(df)

# arrange function
df<-arrange(diamonds,desc(price))

head(df)

#summarize function
summarize(diamonds, mean_price= mean(price, na.rm=T),
          median_price = median(price,na.rm = T))


#introduction to pipe operator
df <- diamonds %>% 
  filter(cut=="Ideal") %>% 
  select(carat, cut, color, price, clarity) %>% 
  mutate(price_per_c = price/carat)

head(df)

head(select(diamonds,-color))

head(select(diamonds,carat:table))

head(select(diamonds,starts_with("c")))

head(select(diamonds,ends_with("y")))

head(select(diamonds,contains("pth")))

head(filter(diamonds, price >= 1000))

head(filter(diamonds, price >= 1000, depth >= 60, carat >= 0.80))

head(filter(diamonds, cut %in% c("Good","Ideal")))

diamonds %>% select(price, table) %>% head

diamonds %>% arrange(desc(price)) %>% head

diamonds %>% summarise(median_price = median(price))

diamonds %>% 
  group_by(clarity) %>% 
  summarise(avg_price=mean(price), 
            avg_carat=mean(carat))

distinct(diamonds, color)

