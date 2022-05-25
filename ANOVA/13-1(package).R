#use package
a <- c(6.1,7.1,7.8,6.9,7.6,8.2)
b <- c(9.1,8.2,8.6,6.9,7.5,7.9)
y <- c(a,b)
level <- factor(c(rep('a',6),rep('b',6)))
(table13.1 <- data.frame('response'=y,'level'=level))
aov13.1 <- aov(response~level,data=table13.1)
summary(aov13.1)
