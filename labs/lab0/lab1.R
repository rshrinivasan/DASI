# The Behavioral Risk Factor Surveillance System (BRFSS) is an annual telephone
# survey of 350,000 people in the United States. As its name implies, the BRFSS
# is designed to identify risk factors in the adult population and report 
# emerging health trends. For example, respondents are asked about their diet 
# and weekly physical activity, their HIV/AIDS status, possible tobacco use, 
# and even their level of healthcare coverage. 

# load sample of 20,000 people from the survey in 2000
source("http://www.openintro.org/stat/data/cdc.R")
# data frame cdc will be loaded
# explore preliminary - cdc
str(cdc)
dim(cdc)
names(cdc)
# Q1. How many cases and how many variables in data set?
# Q2. What type of variable is genhlth?
# Q3. What type of variable is weight?
# Q4. What type of variable is smoke100?
# Q5. Create a numerical summary for gender. How many males in sample?
summary(cdc$gender)
table(cdc$gender)
# Q6. Compute the relative frequency distribution of genhlth.
#     What proportion of the sample reports being in excellent health? 
# Relative frequency distribution can be calculated by dividing the count
# for a particular factor value by the total observations

# counts for genhlth factors
table(cdc$genhlth)
# dividing by number of observations will give relative freq. distributions
table(cdc$genhlth) / nrow(cdc)
# barplot of freq. distributions
barplot(table(cdc$genhlth) / nrow(cdc))
# Q7. Plot mosaic smoking habits and gender
#     What does the mosaic plot reveal about smoking habits and gender?
mosaicplot(table(cdc$gender, cdc$smoke100))
# Q8. How many observations are in the subset under23_and_smoke that you 
#     created in the previous exercise, i.e. how many people in the sample are
#     under the age of 23 and have smoked at least 100 cigarettes in their lifetime?
smoke100_under23 <- subset(cdc, cdc$age < 23 & cdc$smoke100 == 1)
nrow(smoke100_under23)
# Q9 Which of the following is false based on the box plot of BMI vs. general health?
# Create new BMI object
bmi <- (cdc$weight / cdc$height^2) * 703
# create boxplot
boxplot(bmi ~ cdc$genhlth)
# Q10 Based on the plot you made in the previous exercise, which of the 
# following is true about the relationship between weight and desired weight?
# Ques not clear. Plot should be between weight and desired weight
plot(cdc$weight, cdc$wtdesire)
