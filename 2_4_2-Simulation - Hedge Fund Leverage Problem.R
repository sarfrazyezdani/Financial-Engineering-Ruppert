#Premise: Hedge Funds can earn high profits through the use of leverage, but
#leverage also creates high risk. The following simulations in this section
#explore the effects of leverage in a simplified setting.

#Situation 1: Suppose a Hedge Fund owns $1,000,000 of stock and used $50,000 of
#its own capital and $950,000 in borrowed money for the purchase. Suppose that
#if the value of the stock falls below $950,000 at the end of any trading day,
#then the hedge fund will sell all the stock and repay the loan. This will wipe
#out its $50,000 investment. The hedge fudn is said to be leveraged 20:1 since
#its position is 20 times the amount of its own capital invested.

#Situation 2: Suppose that the daily log returns on the stock have a mean of
#0.05/year and a standard deviation of 0.23/year. These can be converted to
#rates per trading day by dividing by 253 and sqrt(253), respectively.

#Problem 4- What is the probability that the value of the stock will be below
#$950,000 at the close of at least one of the next 45 trading days?

# Answer-

niter=10^5 #Number of Iterations
below= rep(0,niter) #Set up storage
set.seed(2009)
for (i in 1:niter) {
  r = rnorm(45, mean=0.05/253, sd=0.23/sqrt(253)) #generate random numbers with given mean and sd
  logPrice=log(10^6)+cumsum(r)
  minlogP= min(logPrice) #minimum price over the next 45 days
  below[i]=as.numeric(minlogP<log(950000))
  
}

mean(below)