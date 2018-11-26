#create dataset
Name <- c("John", "Tim", NA)
Sex <- c("men", "men", "women")
Age <- c(45, 53, NA)
dt <- data.frame(Name, Sex, Age)

dt

#Now will see for missings in the dataset
is.na(dt)

# find sum or percentage of missing values
sum(is.na(dt))
mean(is.na(dt))*100

#statistical applications the missing values might be coded with a number, for example 99
dt$Age[dt$Age == 53] <- NA

#na.omit
Name <- c("John", "Tim", NA)
Sex <- c("men", NA, "women")
Age <- c(45, 53, NA)
dt <- data.frame(Name, Sex, Age)

dt
dt2 <- na.omit(dt)
dt2

#na.rm
mean(dt$Age)
mean(dt$Age,na.rm = TRUE)

#complete.cases
dt[!complete.cases(dt),]
nrow(dt[complete.cases(dt),])
nrow(dt)
ncol(dt)

# Train dataset
train_dataset <- read.csv("train.csv")
nrow(train_dataset)
ncol(train_dataset)
head(train_dataset)
nrow(train_dataset)
sum(is.na(train_dataset))

colSums(is.na(train_dataset))

mean(train_dataset$Age, na.rm = TRUE)

summary(train_dataset)

