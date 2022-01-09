library(ggplot2)

dat=read.csv("Stock_bond.csv", header=TRUE)
read.csv("Stock_bond.csv", header = TRUE)

#DataWork
names(dat)
attach(dat)
par(mfrow= c(1,2))
plot(GM_AC, type= "l" )
plot(F_AC, type= "l")

#Code for sample size(n), GM and Ford Returns, plots, etc.

n=dim(dat)[1]
GMReturn= GM_AC[-1] / GM_AC[-n] -1
FordReturn= F_AC[-1]/F_AC[-n] -1
par(mfrow = c(1,1))
qplot(GMReturn,FordReturn, type="p")

#Q.1 Do the GM and Ford returns seem positively correlated? Do you notice any
#outlying returns? if "yes," do outlying G returns seem to occue with outlying
#Ford Returns?

cor(GMReturn,FordReturn)

#Q.2 Compute the log returns for GM and plot the returns versus the log returns.
#How highly correlated are the two types of returns?

#Log returns

GMLogR= log(GM_AC[-1]/GM_AC[-n])
par(mfrow=c(1,1))
qplot(GMReturn,GMLogR,type="l")
cor(GMReturn,GMLogR)


#Q.3 Repeat Problem 1 with Microsoft (MSFT) and Merck (MRK).

MSFTReturn = MSFT_AC[-1]/MSFT_AC[-n] -1
MRKReturn = MRK_AC[-1]/MRK_AC[-n] -1
par(mfrow=c(1,1))
qplot(MSFTReturn,MRKReturn, type="p")

cor(MSFTReturn,MRKReturn)
