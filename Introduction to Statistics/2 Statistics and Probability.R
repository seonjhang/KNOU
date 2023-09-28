#2.3 Probability of an odd number when a die is thrown
library(mosaic)
n_num = 100000
r_dice = do(n_num) * sample(1:6,1)
taa = tally(~sample, data=r_dice)
taa/n_num
sum(taa[c(1,3,5)])/n_num
barchart(taa/n_num*100, xlab="prop(%)")

#2.4 Probability of getting heads at least once when flipping a coin twice
library(mosaic)
n_num = 100000
r_rflip = do(n_num) * rflip(2)
taa = tally(~heads, data=r_rflip)
taa/n_num
histogram(~heads, data=r_rflip, width=1)
(taa[2]+taa[3])/n_num; 1-taa[1]/n_num

#2.5 Probability of getting number 3 or less under the condition that the dice roll is odd
library(mosaic)
n_num = 100000
r_dice = do(n_num) * sample(1:6,1)
sample = r_dice[r_dice$sample %%2 ==1,]
taa = tally(~sample)
taa/n_num
(taa[1]+taa[2])/(taa[1]+taa[2]+taa[3])

#2.7 Probability mass function when two products are taken out at the same time from a box containing two normal products, and the number of defective products is X
n_num = 100000
# 1: defective, 0: normal
r_box = do(n_num) * sample(c(0,0,1,1),2)
r_box$X = apply(r_box, 1, sum)
taa = tally(~X, data=r_box)
taa/n_num

#2.10, 2.12 Expected value/Variance of the number of heads obtained by flipping a coin twice
n_num = 100000
r_rflip = do(n_num) * rflip(2)
# 기댓값과 분산
mean(r_rflip$heads)
var(r_rflip$heads)

#2.16 When two coins are tossed, X indicates whether the first coin is heads, and Y is the number of heads for all coins.Joint probabilit mass function and peripheral probability mass function of X and Y
n_num = 100000
r_rflip_1 = do(n_num) * rflip(1)
r_rflip_2 = do(n_num) * rflip(1)
r_rflip = r_rflip_1 + r_rflip_2
r_rflip$X = r_rflip_1$heads
r_rflip$Y = r_rflip$heads
#결합확률질량함수
ta_XY = tally(Y~X, data=r_rflip)
ta_XY/n_num
#주변부확률질량함수
ta_X = tally(~X, data=r_rflip)
ta_X/n_num
ta_Y = tally(~Y, data=r_rflip)
ta_Y/n_num
