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
plot(GMReturn,FordReturn, type="p")
