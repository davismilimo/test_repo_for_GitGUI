getwd()
library(foreign)
my_data = read.spss("kenya finaccess survey 2021_3.sav", to.data.frame=TRUE)
head(my_data)
my_data <- data.frame(my_data)
str(my_data)
library(dplyr)
library(data.table)
library(tidyverse)

my1_data= xtabs(my_data$IndWeight ~ my_data$C1_11 + my_data$livelihoodcat)
my.1_data = my1_data %>%
prop.table(margin = 2)
my1_data= as.data.frame(my1_data)
my.1_data= as.data.frame(my.1_data)
crosstable_1 <- data.table(Var1 <- my1_data$my_data.C1_11, Var2 <- my1_data$my_data.livelihoodcat, Freq <- my1_data$Freq, Prop <- my.1_data$Freq)
crosstable_1$loanproduct <- "personal loan/business loan from a bank/microfinance bank"


my2_data = xtabs(my_data$IndWeight ~ my_data$C1_12 + my_data$livelihoodcat)
my.2_data = my2_data %>%
prop.table(margin = 2)
my2_data= as.data.frame(my2_data)
my.2_data= as.data.frame(my.2_data)
crosstable_2 <- data.table(Var1 <- my2_data$my_data.C1_12, Var2 <- my2_data$my_data.livelihoodcat, Freq <- my2_data$Freq, Prop <- my.2_data$Freq)
crosstable_2$loanproduct <- "loan from mobile banking (e.g. mshwari, kcb mpesa, mcoop cash, eazzy loan, timiza, hf whizz, stawi loan, m-fanisi"

my3_data= xtabs(my_data$IndWeight ~ my_data$C1_13 + my_data$livelihoodcat)
my.3_data = my3_data %>%
prop.table(margin = 2)
my3_data= as.data.frame(my3_data)
my.3_data= as.data.frame(my.3_data)
crosstable_3 <- data.table(Var1 <- my3_data$my_data.C1_13, Var2 <- my3_data$my_data.livelihoodcat, Freq <- my3_data$Freq, Prop <- my.3_data$Freq)
crosstable_3$loanproduct <- "loan from mobile money provider (e.g. fuliza loan)"

my4_data= xtabs(my_data$IndWeight ~ my_data$C1_14 + my_data$livelihoodcat)
my.4_data = my4_data %>%
prop.table(margin = 2)
my4_data= as.data.frame(my4_data)
my.4_data= as.data.frame(my.4_data)
crosstable_4 <- data.table(Var1 <- my4_data$my_data.C1_14, Var2 <- my4_data$my_data.livelihoodcat, Freq <- my4_data$Freq, Prop <- my.4_data$Freq)
crosstable_4$loanproduct <- "loan at a sacco/saving and credit cooperative organisation"

my5_data= xtabs(my_data$IndWeight ~ my_data$C1_15 + my_data$livelihoodcat)
my.5_data = my5_data %>%
prop.table(margin = 2)
my5_data= as.data.frame(my5_data)
my.5_data= as.data.frame(my.5_data)
crosstable_5 <- data.table(Var1 <- my5_data$my_data.C1_15, Var2 <- my5_data$my_data.livelihoodcat, Freq <- my5_data$Freq, Prop <- my.5_data$Freq)
crosstable_5$loanproduct <- "loan from a microfinance institution"

my6_data= xtabs(my_data$IndWeight ~ my_data$C1_16 + my_data$livelihoodcat)
my.6_data = my6_data %>%
prop.table(margin = 2)
my6_data= as.data.frame(my6_data)
my.6_data= as.data.frame(my.6_data)
crosstable_6 <- data.table(Var1 <- my6_data$my_data.C1_16, Var2 <- my6_data$my_data.livelihoodcat, Freq <- my6_data$Freq, Prop <- my.6_data$Freq)
crosstable_6$loanproduct <- "loan from shylocks/loan sharks/money lenders/money merchants that are not your phone (e.g. platinum, ngao, etc.)"

my7_data= xtabs(my_data$IndWeight ~ my_data$C1_17 + my_data$livelihoodcat)
my.7_data = my7_data %>%
prop.table(margin = 2)
my7_data= as.data.frame(my7_data)
my.7_data= as.data.frame(my.7_data)
crosstable_7 <- data.table(Var1 <- my7_data$my_data.C1_17, Var2 <- my7_data$my_data.livelihoodcat, Freq <- my7_data$Freq, Prop <- my.7_data$Freq)
crosstable_7$loanproduct <- "loan from a group/chama"


my8_data= xtabs(my_data$IndWeight ~ my_data$C1_18 + my_data$livelihoodcat)
my.8_data = my8_data %>%
prop.table(margin = 2)
my8_data= as.data.frame(my8_data)
my.8_data= as.data.frame(my.8_data)
crosstable_8 <- data.table(Var1 <- my8_data$my_data.C1_18, Var2 <- my8_data$my_data.livelihoodcat, Freq <- my8_data$Freq, Prop <- my.8_data$Freq)
crosstable_8$loanproduct <- "loan from government institution for education, agriculture or development"


my9_data= xtabs(my_data$IndWeight ~ my_data$C1_19 + my_data$livelihoodcat)
my.9_data = my9_data %>%
prop.table(margin = 2)
my9_data= as.data.frame(my9_data)
my.9_data= as.data.frame(my.9_data)
crosstable_9 <- data.table(Var1 <- my9_data$my_data.C1_19, Var2 <- my9_data$my_data.livelihoodcat, Freq <- my9_data$Freq, Prop <- my.9_data$Freq)
crosstable_9$loanproduct <- "loan from an employer"

my10_data= xtabs(my_data$IndWeight ~ my_data$C1_20 + my_data$livelihoodcat)
my.10_data = my10_data %>%
prop.table(margin = 2)
my10_data= as.data.frame(my10_data)
my.10_data= as.data.frame(my.10_data)
crosstable_10 <- data.table(Var1 <- my10_data$my_data.C1_20, Var2 <- my10_data$my_data.livelihoodcat, Freq <- my10_data$Freq, Prop <- my.10_data$Freq)
crosstable_10$loanproduct <- "loan from family/friend/neighbour"

my11_data= xtabs(my_data$IndWeight ~ my_data$C1_21 + my_data$livelihoodcat)
my.11_data = my11_data %>%
prop.table(margin = 2)
my11_data= as.data.frame(my11_data)
my.11_data= as.data.frame(my.11_data)
crosstable_11 <- data.table(Var1 <- my11_data$my_data.C1_21, Var2 <- my11_data$my_data.livelihoodcat, Freq <- my11_data$Freq, Prop <- my.11_data$Freq)
crosstable_11$loanproduct <- "cash loan from shopkeeper"

my12_data= xtabs(my_data$IndWeight ~ my_data$C1_22 + my_data$livelihoodcat)
my.12_data = my12_data %>%
prop.table(margin = 2)
my12_data= as.data.frame(my12_data)
my.12_data= as.data.frame(my.12_data)
crosstable_12 <- data.table(Var1 <- my12_data$my_data.C1_22, Var2 <- my12_data$my_data.livelihoodcat, Freq <- my12_data$Freq, Prop <- my.12_data$Freq)
crosstable_12$loanproduct <- "taking goods and services on credit from a shopkeeper"

my13_data= xtabs(my_data$IndWeight ~ my_data$C1_23 + my_data$livelihoodcat)
my.13_data = my13_data %>%
prop.table(margin = 2)
my13_data= as.data.frame(my13_data)
my.13_data= as.data.frame(my.13_data)
crosstable_13 <- data.table(Var1 <- my13_data$my_data.C1_23, Var2 <- my13_data$my_data.livelihoodcat, Freq <- my13_data$Freq, Prop <- my.13_data$Freq)
crosstable_13$loanproduct <- "digital loans that you get through the phone that you download through apps (e.g. Branch, Tala, Utunzi, Haraka loans etc.)"


my14_data= xtabs(my_data$IndWeight ~ my_data$C1_24 + my_data$livelihoodcat)
my.14_data = my14_data %>%
prop.table(margin = 2)
my14_data= as.data.frame(my14_data)
my.14_data= as.data.frame(my.14_data)
crosstable_14 <- data.table(Var1 <- my14_data$my_data.C1_24, Var2 <- my14_data$my_data.livelihoodcat, Freq <- my14_data$Freq, Prop <- my.14_data$Freq)
crosstable_14$loanproduct <- "loan/credits from buyer of your harvest/supplier of agriculture inputs (e.g. coffee, tea, sugarcane, tobacco, vegetables)"


my15_data= xtabs(my_data$IndWeight ~ my_data$C1_25 + my_data$livelihoodcat)
my.15_data = my15_data %>%
prop.table(margin = 2)
my15_data= as.data.frame(my15_data)
my.15_data= as.data.frame(my.15_data)
crosstable_15 <- data.table(Var1 <- my15_data$my_data.C1_25, Var2 <- my15_data$my_data.livelihoodcat, Freq <- my15_data$Freq, Prop <- my.15_data$Freq)
crosstable_15$loanproduct <- "hire purchase (e.g. kukopesha, diamond trust, kenya credit traders (kct), synergy, one africa capital, tuskys)"


my16_data= xtabs(my_data$IndWeight ~ my_data$C1_26 + my_data$livelihoodcat)
my.16_data = my16_data %>%
prop.table(margin = 2)
my16_data= as.data.frame(my16_data)
my.16_data= as.data.frame(my.16_data)
crosstable_16  <- data.table(Var1 <- my16_data$my_data.C1_26, Var2 <- my16_data$my_data.livelihoodcat, Freq <- my16_data$Freq, Prop <- my.16_data$Freq)
crosstable_16$loanproduct <- "loan from insurance"




