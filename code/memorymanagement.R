#install.packages("pryr")
#install.packages("ggplot2")
#install.packages("devtools")

library(pryr)
library(ggplot2)
library(devtools)
object_size(1:10)
object_size(mean)
object_size(mtcars)

object_size(numeric())
object_size(logical())
object_size(raw())
object_size(list())

#Memory usage and garbage collection
mem_used()

#mem_change() builds on top of mem_used() to tell you how memory changes during code execution. Positive numbers represent an increase in the memory used by R, and negative numbers represent a decrease.
mem_change(x <- 1:1e6)

#Memory profiling with lineprof
