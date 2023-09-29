#Comparison of Two Population Means
#7-3 It is said that a certain school implemented after-school learning for a certain period of time to improve students' achievement in certain subjects.
#Assuming that students' achievement scores follow a normal distribution, test at the 5% significance level whether this school's after-school learning improved students' achievement
pre <- c(72, 80, 83, 63, 66, 76, 82)
post <- c(78, 82, 82, 68, 70, 75, 88)
exam1 <- data.frame(pre, post)
t.test(exam1$pre, exam1$post, mu=0, alternative="less", paired=T)

#One-way Analysis of Variance
#7-5 In an agricultural research institute, an experiment was conducted on 12 plots to compare the effects of four types of fertilizers.
#Three plots per fertilizer were randomly assigned to control the crops for a certain period of time and measure the yield.
x <- c(84, 83, 82, 85, 89, 86, 93, 94, 96, 89, 89, 87)
A <- c(rep(1,3), rep(2,3), rep(3,3), rep(4,3))
A <- factor(A)
aovdat1 <- data.frame(x, A)
aovmodel1 <- aov(x ~ A, data=aovdat1)
summary(aovmodel1)

#Two-way Analysis of Variance
#7-6
y <- c(97.8, 97.5, 96.9, 98.5, 98.8, 07.1, 99.2, 98.4, 98.1, 98.2, 97.5, 96.8)
surface <- c(rep(1,3), rep(2,3), rep(3,3), rep(4,3))
manu <- rep(c(1,2,3), 4)
surface <- factor(surface)
manu <- factor(manu)
aovdat2 <- data.frame(surface, manu)
aovmodel2 <- aov(y ~ surface + manu, data=aovdat2)
summary(aovmodel2)

#Chi-Square Test for Independence of Categorical Variables
#7-10
dept <- c(rep("Stat", 50), rep("DS", 25))
regi <- c(rep("Y", 20), rep("N", 30), rep("Y", 13), rep("N", 12))
deptregi <- data.frame(dept, regi)
rtable <- xtabs(~dept+regi, data=deptregi)
rtable
ctest <- chisq.test(rtable, correct=F)
ctest

#Goodness of Fit Test
#60 branches were randomly selected of a bank across the country and investigated how many bankruptcies were observed on that day.
#Test at the 5% significnace level whether the number of bounced checks at this bank branch follows a Poisson distribution.
catnum <- c(0:3)
obs <- c(33, 15, 9, 3)
m <- sum(catnum*obs)/sum(obs)
pprob <- round(dpois(catnum, m), 3)
pprob
pprob[4] <- 1-sum(pprob[1:3])
pprob
pprob*60
obs1 <- c(33, 15, 12)
pprob1 <- pprob[1:3]
pprob1[3] <- 1-sum(pprob[1:2])
pprob1
ctest1 <- chisq.test(obs1, p=pprob1)
ctest1$statistic > qchisq(0.95, 1)
