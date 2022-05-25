y <- c(27.6,32.5,35.9,39.3,44.2,48.8,55.7,62.9)
x <- c(1,2,3,4,5,6,7,8)

mod = lm(y~x)
conf.level = 0.99
summary(mod)#answer(a)

yearaverage <- mean(x)
priceaverage <- mean(y)

n <- length(x)
SXX <- sum((x-yearaverage)^2)
SXY <- sum((x-yearaverage)*(y-priceaverage))
SYY <- sum((y-priceaverage)^2)

slope <- SXY/SXX
beta  <- priceaverage-slope*yearaverage
SSE   <- SYY-slope*SXY
ssquare <- SSE/(n-2)
s     <- sqrt(ssquare)

alpha = 0.01
degrees.freedom = n-2
t.score = qt(p=alpha/2, df=degrees.freedom)
margin.error <- t.score*s*sqrt(1/SXX)
lowerbound <- slope - margin.error
upperbound <- slope + margin.error
interval <- c(lowerbound,upperbound)
CI<-c(min(interval),max(interval))
print(CI)#answer(b)
