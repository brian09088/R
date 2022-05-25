#example13.1
#not use package
a <- c(6.1,7.1,7.8,6.9,7.6,8.2)
b <- c(9.1,8.2,8.6,6.9,7.5,7.9)
(t13.1 <- matrix(c(a,b),nrow=6,ncol = 2))
#SSTO
sapply(t13.1,function(x){ (x-mean(t13.1))^2 })
sum(sapply(t13.1,function(x){ (x-mean(t13.1))^2 }))
#將每一個 table 內的值-平均 取平方和
#SST
mean(t13.1[,1])
6*sum(( mean(t13.1[,1])-mean(t13.1) )^2+( mean(t13.1[,2])-
                                            mean(t13.1) )^2)
6*sum( (mean(a)-mean(t13.1))^2 + (mean(b)-mean(t13.1))^2 )
#SSE
sum((t13.1[,1]-mean(t13.1[,1]))^2)+sum((t13.1[,2]-mean(t13.1[,2]))^2)
