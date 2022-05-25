#use package
y <- c(A,B,C,D)
level <- factor(c(rep('1',6),rep('2',7),rep('3',6),rep('4',4)))
(table13.2 <- data.frame('response'=y,'level'=level))
aov13.2 <- aov(response~level,data=table13.2)
summary(aov13.2)
