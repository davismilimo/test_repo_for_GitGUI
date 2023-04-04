# Repository for mobile money services in Kenya
## The graphs show **mobile money trends in Kenya from 2009 quarter 1 to 2021 quarter 4**
<img src = "mobile money.png" alt = "mobile money">

## Utilization of mobile money services and financial inclusion in Kenya (Evidence from 2021 FinAccess Survey Data)
To examine utilization of mobile money services I estimated **logit model** from 2021 FinAccess Survey Data. Robustness checks was done on the coeffients obtained from **logit model** by comparing with coefficients obtained from **probit and tobit models**. These results were described in a financial inclusion statistics conference paper **https://www.fsdkenya.org/wp-content/uploads/2022/11/Utilization-of-mobile-money-services-and-financial-inclusion-in-Kenya-_Evidence-from-2021-Finaccess-survey-data_Florence-Nelima-Simiyu__Milimo-Davis.pdf**.

## Getting started
To estimate the **logit, probit and tobit models**, find the R script and data available on **https://github.com/davismilimo/test_repo_for_GitGUI**.

## Prerequisites to run the R code
To run the **R code**, install **R-Studio and R software**, and the following **R packages: foreign, tidyverse, stargazer, magrittr, margins, caret, VGAM, AER, truncreg, censReg**

## Clear memory
    rm(list=ls())

## Install packages
    PackageNames <- c("foreign","tidyverse", "stargazer", "magrittr", "margins", "caret", "VGAM", "AER", "truncreg", "censReg")

    for(i in PackageNames){

    if(!require(i, character.only = T)){
  
    install.packages(i, dependencies = T)
    
    require(i, character.only = T)
    
      }
  
    }

## Load the data
    getwd()

    my_data = read.spss("kenya finaccess survey 2021.sav", to.data.frame=TRUE)

    attach(my_data)

    head(my_data)
    
## 1. Saving through mobile banking 
## Descriptive statistics
    C1_2_currentlyuse = as.factor(C1_2_currentlyuse); table(C1_2_currentlyuse)
    
    livelihoodcat = as.factor(livelihoodcat); table(livelihoodcat)
    
    quintile = as.factor(quintile); table(quintile)
    
    education = as.factor(education); table(education)
## Logistic regression
    logit <- glm(C1_2_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
    marg.eff = logitmfx(C1_2_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
## Probit regression
    probit <- glm(C1_2_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
    marg.eff = probitmfx(C1_2_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
## Tobit regression
    tobit <- censReg(C1_2_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
    marg.eff = margEff(tobit); summary(marg.eff)
    
## 2. Saving/keeping through mobile money account
## Descriptive statistics
    C1_3_currentlyuse = as.factor(C1_3_currentlyuse); table(C1_3_currentlyuse)
## Logistic regression
    logit <- glm(C1_3_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
    marg.eff = logitmfx(C1_3_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff 
## Probit regression
    probit <- glm(C1_3_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
    marg.eff = probitmfx(C1_3_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
## Tobit regression
    tobit <- censReg(C1_3_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
    marg.eff = margEff(tobit); summary(marg.eff)
    
## 3. Loan from mobile banking
## Descriptive statistics
    C1_12_currentlyuse = as.factor(C1_12_currentlyuse); table(C1_12_currentlyuse)
## Logistic regression
    logit <- glm(C1_12_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
    marg.eff = logitmfx(C1_12_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff 
## Probit regression
    probit <- glm(C1_12_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
    marg.eff = probitmfx(C1_12_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
## Tobit regression
    tobit <- censReg(C1_12_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
    marg.eff = margEff(tobit); summary(marg.eff)
    
## 4. Loan from mobile money provider
## Descriptive statistics
    C1_13_currentlyuse = as.factor(C1_13_currentlyuse); table(C1_13_currentlyuse)
## Logistic regression
    logit <- glm(C1_13_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
    marg.eff = logitmfx(C1_13_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff 
## Probit regression
    probit <- glm(C1_13_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
    marg.eff = probitmfx(C1_13_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
## Tobit regression
    tobit <- censReg(C1_13_currentlyuse ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
    marg.eff = margEff(tobit); summary(marg.eff)
    
## 5. Paid monthly bills via mobile money account
## Descriptive statistics
    G1A1__3 = as.factor(G1A1__3); table(G1A1__3)
## Logistic regression
    logit <- glm(G1A1__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
    marg.eff = logitmfx(G1A1__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff 
## Probit regression
    probit <- glm(G1A1__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
    marg.eff = probitmfx(G1A1__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
## Tobit regression
    tobit <- censReg(G1A1__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
    marg.eff = margEff(tobit); summary(marg.eff)

## 6. Paid daily expenses via mobile money account
## Descriptive statistics
    G1A4__3 = as.factor(G1A4__3); table(G1A4__3)
## Logistic regression
    logit <- glm(G1A4__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,family="binomial",data=my_data); summary(logit)
    marg.eff = logitmfx(G1A4__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff 
## Probit regression
    probit <- glm(G1A4__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, data = my_data, family = binomial(link = "probit")); summary(probit)
    marg.eff = probitmfx(G1A4__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq,data = my_data, atmean = T); marg.eff
## Tobit regression
    tobit <- censReg(G1A4__3 ~ livelihoodcat+quintile+urban+female+marital+education+mobile_own+shock+age+agesq, left=0, right=Inf, data=my_data); summary(tobit)
    marg.eff = margEff(tobit); summary(marg.eff)
    

    
    
    




