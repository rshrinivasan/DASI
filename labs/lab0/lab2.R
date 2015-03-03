# Basketball players who make several baskets in succession are described as 
# having a “hot hand”. Fans and players have long believed in the hot hand 
# phenomenon, which refutes the assumption that each shot is independent of the
# next. However, a 1985 paper by Gilovich, Vallone, and Tversky collected 
# evidence that contradicted this belief and showed that successive shots are 
# independent events. This paper started a great controversy that continues to
# this day, as you can see by Googling “hot hand basketball”.

# We do not expect to resolve this controversy today. However, in this lab 
# we’ll apply one approach to answering questions like this. The goals for this
# lab are to (1) think about the effects of independent and dependent events, 
# (2) learn how to simulate shooting streaks in R, and (3) to compare a 
# simulation to actual data in order to determine if the hot hand phenomenon 
# appears to be real.

# load data
load(url("http://www.openintro.org/stat/data/kobe.RData"))
# In this data frame, every row records a shot taken by Kobe Bryant. If he hit 
# the shot (made a basket), a hit, H, is recorded in the column named basket, 
# otherwise a miss, M, is recorded.
# For this lab, we define the length of a shooting streak to be the number of
# consecutive baskets made until a miss occurs.
# Q1. What does a streak length of 1 mean, i.e. how many hits and misses are
#     in a streak of 1? 
# Q2. What about a streak length of 0? How many hits and misses are in a streak
#     of 0? 

# Use custom function calc_streak to calculate the lengths of all streaks
kobe_streak <- calc_streak(kobe$basket)
table(kobe_streak)
barplot(table(kobe_streak))
# Q3. Which of the following is false about the distribution of Kobe’s streak
#     lengths from the 2009 NBA finals. 
summary(kobe_streak)
boxplot(kobe_streak)

outcomes <- c("heads", "tails")
sample(outcomes, size = 1, replace = TRUE)
sim_fair_coin <- sample(outcomes, size = 100, replace = TRUE)
sim_fair_coin
table(sim_fair_coin)
# simulate unfair coin
sim_unfair_coin <- sample(outcomes, size = 100, replace = TRUE, prob = c(0.2, 0.8))
sim_unfair_coin
table(sim_unfair_coin)
# simulate independent shooter
outcomes <- c("H", "M")
# shooting %age 45%, sample 133 shots
sim_basket <- sample(outcomes, size = 133, replace = TRUE, prob =c(0.45, 0.55))
kobe$basket
sim_basket
barplot(table(calc_streak(kobe$basket)))
barplot(table(calc_streak(sim_basket)))
