#Simple Linear Regression

#Scatter Plot
market = read.table("c:/data/market-1.txt", header=T)
head(market)

plot(market$X, market$Y, xlab="Marketing Fee", ylab="Total Sales", pch=19)
title("Scatter Plot")

#Simple Linear Regression
market.lm = lm(Y ~ X, data=market)
summary(market.lm)

plot(market$X, market$Y, xlab="Marketing Fee", ylab="Total Sales", pch=19)
title("Scatter Plot")
abline(market.lm)

#Residuals
names(market.lm)
market.lm$resid
sum(market.lm$resid)
sum(market$X*market.lm$resid)

#ANOVA
anova(market.lm)

qf(0.95, 1, 13)
1-pf(192.9, 1, 13)

pred.frame=data.frame(X=seq(3.5, 14.5, 0.2))
pc=predict(market.lm, int="c", newdata=pred.frame)
pp=predict(market.lm, int="p", newdata=pred.frame)
head(pc)

head(pp)

pred.X=pred.frame$X
pred.X

plot(market$X, market$Y, ylim=range(market$Y, pp))
matlines(pred.X, pc, lty=c(1, 2, 2), col="BLUE")
matlines(pred.X, pp, lty=c(1, 3, 3), col="RED")
