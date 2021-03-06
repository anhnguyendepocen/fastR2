# finding the "other side" by inspection:
dbinom(16, 50, 1/6)
data.frame(x = 0:4, `P(X=x)` = dbinom(0:4, 50, 1/6), check.names = FALSE)

# this should match the p-value from binom.test()
pbinom(1, 50, 1/6) + 1 - pbinom(15, 50, 1/6)
# letting R automate finding the interval too:
probs <- dbinom(0:50, 50, 1/6) 
sum(probs[probs <= dbinom(16, 50, 1/6)])

