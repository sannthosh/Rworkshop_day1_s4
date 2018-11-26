# library Data.Table (open source tool)
# goals of data.table library is to process large datasets by doing
# reducing the programming time- fewer ffunctions, less variable repetition
# reducing the computation time- fast aggregation, update by referencing
install.packages("data.table")
library(data.table)

# SQL style of referencing
# R(Data.Table) : i               j                by
# SQL:           where           select           groupby

df = data.frame(mtcars[,1:5])

head(df)

library(data.table)
dt = data.table(mtcars[,1:5])

dt1 = data.table(mtcars[,1:5])

tables()

sapply(dt, class)

