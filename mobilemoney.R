# Visualization in R
# Authored by Davis Milimo
# Here is the link to the dataset that I am using https://github.com/davismilimo/test_repo_for_GitGUI/blob/main/mobile%20money%20cbk%20data.csv

#rm(list=ls()); options(scipen=999)
#install.packages("readr")
getwd()
library(readr)
my_data <- read_csv("Mobile Money in Kenya CBK Data.csv")
View(my_data)

#Data
q= my_data$Q.n
agents=my_data$"Mobile Money Active Agents"
accounts=my_data$"Total Registered Mobile Money Accounts (Millions)"
transactions=my_data$"Mobile Money Total Agent Cash in Cash Out (Value KSh billions)"
MMTNGDP= my_data$"MMTNGDP"

#Plots
par(mfrow=c(2,2))
plot(q, agents, type = "l",lwd=3,frame = TRUE, pch = 19, 
     col = "red", main = "Mobile money active agents", xlab = "quarter", ylab = "No. of agents")

plot(q, accounts, type = "l",lwd=3,frame = TRUE, pch = 19, 
     col = "blue", main = "Mobile money accounts", xlab = "quarter", ylab = "No. of accounts (millions)")

plot(q, transactions, type = "l",lwd=3,frame = TRUE, pch = 19, 
     col = "green", main = "Agents transactions", xlab = "quarter", ylab = "Value in ksh billions")

plot(q, MMTNGDP, type = "l",lwd=3,frame = TRUE, pch = 19, 
     col = "orange3", main = "Agents transactions to nominal GDP", xlab = "quarter", ylab = "transactions:nominal GDP")