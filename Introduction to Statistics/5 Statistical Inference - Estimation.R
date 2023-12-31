#Confidence interval estimation for population mean
score = c(88, 83, 83, 85, 94, 88, 91, 96, 89, 83, 81, 80, 84, 89, 83, 79)
bar_x = mean(score)
s = sd(score)
n = length(score)
#95%
qt_95 = qt(0.975, 15)
c(bar_x - qt_95*s/sqrt(n), bar_x + qt_95*s/sqrt(n))
#99%
qt_99 = qt(0.995, 15)
c(bar_x - qt_99*s/sqrt(n), bar_x + qt_99*s/sqrt(n))
t.test(score, conf.level = 0.99)$conf.int

#Confidence interval estimation for population proportions
n = 500; X = 200
p_hat = X/n
alpha = 0.05
z_1 = qnorm(1-alpha/2)
c(p_hat-z_1*sqrt(p_hat*(1-p_hat)/n), p_hat+z_1*sqrt(p_hat*(1-p_hat)/n))
prop.test(X, n)$conf.int

#Confidence interval esitmation for population variance
s2 = 4^2
n = 40
alpha = 0.05
q_1 = qchisq(1-alpha/2, n-1)
q_2 = qchisq(alpha/2, n-1)
c((n-1)*s2/q_1, (n-1)*s2/q_2)
