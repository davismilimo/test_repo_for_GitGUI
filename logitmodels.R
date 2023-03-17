# Logit and Probit Models in R
# Authored by Davis Milimo
# Here is the link to the dataset that I am using https://github.com/davismilimo/test_repo_for_GitGUI/blob/main/kenya%20finaccess%20survey%202021.sav

# rm(list=ls()); options(scipen=999)
# install.packages("nnet", dependencies=TRUE)
# install.packages("foreign", dependencies=TRUE)

getwd()
library(foreign) # load the package
library(nnet) # load the package
my_data = read.spss("kenya finaccess survey 2021_16.sav", to.data.frame=TRUE)
attach(my_data)
head(my_data)

# Descriptive statistics
C1_2_currentlyuse = as.factor(C1_2_currentlyuse);table(C1_2_currentlyuse)
# logistic regression
summary(glm(C1_2_currentlyuse ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family="binomial",data=my_data))
# probit regression
summary(glm(C1_2_currentlyuse ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family = binomial(link = "probit"), data= my_data))

# Descriptive statistics
C1_3_currentlyuse = as.factor(C1_3_currentlyuse);table(C1_3_currentlyuse)
# logistic regression
summary(glm(C1_3_currentlyuse ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family="binomial",data=my_data))
# probit regression
summary(glm(C1_3_currentlyuse ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family = binomial(link = "probit"), data= my_data))


# Descriptive statistics
C1_12_currentlyuse = as.factor(C1_12_currentlyuse);table(C1_12_currentlyuse)
# logistic regression
summary(glm(C1_12_currentlyuse ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family="binomial",data=my_data))
# probit regression
summary(glm(C1_12_currentlyuse ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family = binomial(link = "probit"), data= my_data))

# Descriptive statistics
C1_13_currentlyuse = as.factor(C1_13_currentlyuse);table(C1_13_currentlyuse)
# logistic regression
summary(glm(C1_13_currentlyuse ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family="binomial",data=my_data))
# probit regression
summary(glm(C1_13_currentlyuse ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family = binomial(link = "probit"), data= my_data))

# Descriptive statistics
G1A1__3 = as.factor(G1A1__3);table(G1A1__3)
# logistic regression
summary(glm(G1A1__3 ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family="binomial",data=my_data))
# probit regression
summary(glm(G1A1__3 ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family = binomial(link = "probit"), data= my_data))

# Descriptive statistics
G1A4__3 = as.factor(G1A4__3);table(G1A4__3)
# logistic regression
summary(glm(G1A4__3 ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family="binomial",data=my_data))
# probit regression
summary(glm(G1A4__3 ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock+age+agesq,family = binomial(link = "probit"), data= my_data))

