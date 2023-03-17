# Logit Model in R
# Authored by Davis Milimo
# Here is the link to the dataset that I am using "http://www.utstat.utoronto.ca/~brunner/data/legal/mathcat.data.txt"

rm(list=ls()); options(scipen=999) 
# install.packages("mlogit", dependencies=TRUE) 
library(mlogit) 
math = read.table("http://www.utstat.utoronto.ca/~brunner/data/legal/mathcat.data.txt")
head(math)

# Try a simple logistic regression
# First make a data frame with just what we need
math0 = math[,c(1,5)]; head(math0)
# Make an mlogit data frame in long format
wide0 = mlogit.data(math0,shape="wide",choice="passed")
head(wide0)
simple0 = mlogit(passed ~ 0 | hsgpa, data=wide0)
simple0 = mlogit(passed ~ 0 | hsgpa, data=wide0); summary(simple0)

# Compare ordinary logistic regression
math$passed <- as.factor(math$passed)
summary(glm(passed~hsgpa,family="binomial",data=math))
anova(glm(passed~hsgpa,family="binomial",data=math))


# simple regression with a 3-category outcome
# I think I have to make an mlogit data frame with just the vars I want
# First try to make reference category of outcome Failed
# Setting contrasts had no effect. Change the alphabetical order
outcome = as.character(math$outcome)
for(j in 1:length(outcome)) {if(outcome[j]=='Disappeared') outcome[j]='Gone'}
math$outcome = factor(outcome); table(outcome)outcome = as.character(math$outcome)
math1 = math[,c(1,6)]
wide1 = mlogit.data(math1,shape="wide",choice="outcome")
head(wide1)

head(math)
simple1 = mlogit(outcome ~ 0 | hsgpa, data=wide1)
summary(simple1)






