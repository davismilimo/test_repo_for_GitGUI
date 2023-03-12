# Multinomial Logit in R
# Authored by Davis Milimo
# Here is the link to the dataset that I am using https://github.com/davismilimo/test_repo_for_GitGUI/blob/main/kenya%20finaccess%20survey%202021.sav

# install.packages("nnet")
# install.packages("foreign")
getwd()
library(foreign)
library(nnet)
my_data = read.spss("kenya finaccess survey 2021.sav", to.data.frame=TRUE)
attach(my_data)


# Descriptive statistics
table(my_data$C1_2)
table(my_data$C1_3)
table(my_data$C1_12)
table(my_data$C1_13)
table(my_data$G1A1__3)
table(my_data$G1A4__3)

# Multinomial Logit
model1 = multinom(C1_2 ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock, data= my_data)
model1

model2 = multinom(C1_3 ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock, data= my_data)
model2

model3 = multinom(C1_12 ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock, data= my_data)
model3

model4 = multinom(C1_13 ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock, data= my_data)
model4

model5 = multinom(G1A1__3 ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock, data= my_data)
model5

model6 = multinom(G1A4__3 ~ livelihoodcat+quintile+Urban+Female+married+education+mobile_own+experienced_shock, data= my_data)
model6