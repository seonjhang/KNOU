#Testing for population mean(1)
#6-6 There are 10 people living in an apartment complex and surveyed them to determine whether the number of orders placed at an internet shopping mall per month was greater than the average number of orders for the entire population, which is 12 times
#The sample mean was estimated to be 12.2, the standard deviation was estimated to be 0.2, and the population follows a normal distribution
n = 10; s = 0.2; bar_x = 12.2
alpha = 0.05
ttest = (bar_x - 12)/(0.2/sqrt(10)) #Test Statistic
ttest_cr = qt(1-alpha/2, n-1) #Critical Region
ttest_pv = (1-pt(ttest, n-1))*2 #Significance Probability
cat("Test Statistic Value: ", ttest, "Critical Region: ", ttest_cr, "Significnat Probability: ", ttest_pv)

#Testing for population mean(2)
#6-7 When 16 elementary school students in a village were surveyed to determine the number of books they read in a year, the results were as follows. (5, 23, 20, 1, 10, 15, 15, 10, 9, 13, 18, 11, 18, 20, 19, 19)
#Test whether this result is greater than the number of books read in the village the previous year, which was 11. The population is assumed to follow a normal distribution.
book = c(5, 23, 20, 1, 10, 15, 15, 10, 9, 13, 18, 11, 18, 20, 19, 19)
t.test(book, mu=11, alternative = "greater")

#Test for Population Proportion
#6-8 A pharmaceutical company has developed a new treatment for disease A. The cure rate of existing treatments for disease A is 60%.
#An experiment was conducted ona sample of 50 people taking the new treatment, 35 people were found to be cured.
#From the experimental results, test whether the treatment rate has been improved by the new drug at a significnce level of 5%
p0 = 0.6; n = 50; hat_p = 0.7
alpha = 0.05
ptest = (hat_p - p0)/sqrt(p0*(1-p0)/n)
ptest_cr = qnorm(1-alpha)
ptest_pv = 1-pnorm(ptest)
cat("Test Statistic Value: ", ptest, "Critical Region: ", ptest_cr, "Significnat Probability: ", ptest_pv)

#Test for Population Variance
#6-10 The following results are the number of books read by 12 students at a certain school. (5, 23, 20, 1, 10, 15, 15, 10, 9, 13, 18, 11)
#Test whether the standard deviation of the number of books these students read is greater than 4 standard deviations of the books they read in the previous year. The population is assumed to follow a normal distribution.
n = 12
alpha = 0.05
book = c(5, 23, 20, 1, 10, 15, 15, 10, 9, 13, 18, 11)
vtest = var(book)*(12-1)/4^2
vtest_cr = qchisq(1-alpha, n-1)
vtest_pv = 1-pchisq(vtest, n-1)
cat("Test Statistic Value: ", vtest, "Critical Region: ", vtest_cr, "Significnat Probability: ", vtest_pv)
