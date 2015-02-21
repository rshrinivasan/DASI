# Duke Introduction to Data and Probability
# Lab 0 Exercises
# download dataset from Openintro site
source("http://www.openintro.org/stat/data/present.R")
# printout the data
present
# examine the structure
str(present)
# examine the dimensions of the dataframe
dim(present)
# examine names of variables
names(present)
# get count of boys born each year
present$boys
# get count of girls born each year
present$girls
# plot girls born every year
plot(x = present$year, y = present$girls, type = "l")
# get the year of maximum births
plot(present$year, present$boys + present$girls, type ="l")
# plot of proportion of boys over time
plot(present$year, present$boys / (present$boys + present$girls), type = "l")
# check if more boys were born every year than girls
present$boys > present$girls
# plot boy-to-girl ratio for every year
plot(present$year, present$boys / present$girls, type = "l")
# find the year of maximum births
present[which.max(present$boys + present$girls), ]
# find the year of biggest absolute difference between number of boys and girls
# born each year
present[which.max(abs(present$boys - present$girls)), ]
