# logit, probit and tobit models using R and R studio
# authored by Davis Milimo
# here is the link to my github https://github.com/davismilimo/test_repo_for_GitGUI

# clear memory
rm(list=ls())

# install packages
PackageNames <- c("foreign","tidyverse", "stargazer", "magrittr", "margins", "caret", "VGAM", "AER", "truncreg", "censReg")
for(i in PackageNames){
  if(!require(i, character.only = T)){
    install.packages(i, dependencies = T)
    require(i, character.only = T)
  }
}

# load the data
getwd()
my_data = read.spss("kenya finaccess survey 2021.sav", to.data.frame=TRUE)
attach(my_data)
head(my_data)

# saving through mobile banking 
# descriptive statistics
C1_2_currentlyuse = as.factor(C1_2_currentlyuse);table(C1_2_currentlyuse)
livelihoodcat = as.factor(livelihoodcat);table(livelihoodcat)
quintile = as.factor(quintile);table(quintile)
education = as.factor(education);table(education)

# logistic regression
logit <- glm(C1_2_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
marg.eff = logitmfx(C1_2_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff 
# probit regression
probit <- glm(C1_2_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
marg.eff = probitmfx(C1_2_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
# tobit regression
tobit <- censReg(C1_2_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
marg.eff = margEff(tobit); summary(marg.eff)

# savings/keeping through mobile money account
# descriptive statistics
C1_3_currentlyuse = as.factor(C1_3_currentlyuse);table(C1_3_currentlyuse)
# logistic regression
logit <- glm(C1_3_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
marg.eff = logitmfx(C1_3_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff 
# probit regression
probit <- glm(C1_3_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
marg.eff = probitmfx(C1_3_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
# tobit regression
tobit <- censReg(C1_3_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
marg.eff = margEff(tobit); summary(marg.eff)

# loan from mobile banking
# descriptive statistics
C1_12_currentlyuse = as.factor(C1_12_currentlyuse);table(C1_12_currentlyuse)
# logistic regression
logit <- glm(C1_12_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
marg.eff = logitmfx(C1_12_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff 
# probit regression
probit <- glm(C1_12_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
marg.eff = probitmfx(C1_12_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
# tobit regression
tobit <- censReg(C1_12_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
marg.eff = margEff(tobit); summary(marg.eff)

# loan from mobile money provider
# descriptive statistics
C1_13_currentlyuse = as.factor(C1_13_currentlyuse);table(C1_13_currentlyuse)
# logistic regression
logit <- glm(C1_13_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
marg.eff = logitmfx(C1_13_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff 
# probit regression
probit <- glm(C1_13_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
marg.eff = probitmfx(C1_13_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
# tobit regression
tobit <- censReg(C1_13_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
marg.eff = margEff(tobit); summary(marg.eff)

# paid monthly bills via mobile money account
# Descriptive statistics
G1A1__3 = as.factor(G1A1__3);table(G1A1__3)
# logistic regression
logit <- glm(G1A1__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
marg.eff = logitmfx(G1A1__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff 
# probit regression
probit <- glm(G1A1__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
marg.eff = probitmfx(G1A1__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
# tobit regression
tobit <- censReg(G1A1__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
marg.eff = margEff(tobit); summary(marg.eff)

# paid daily expenses via mobile money account
# descriptive statistics
G1A4__3 = as.factor(G1A4__3);table(G1A4__3)
# logistic regression
logit <- glm(G1A4__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
marg.eff = logitmfx(G1A4__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff 
# probit regression
probit <- glm(G1A4__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
marg.eff = probitmfx(G1A4__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
# tobit regression
tobit <- censReg(G1A4__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
marg.eff = margEff(tobit); summary(marg.eff)
