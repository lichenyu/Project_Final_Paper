
bar1 = c(1373226988, 1575067520, 1766403814, 2023202974, 2231957359, 2494736248, 2728428107, 2956385569, 3185996155, 3424971237)
bar2 = c(0.206, 0.233, 0.258, 0.292, 0.318, 0.351, 0.38, 0.407, 0.434, 0.461)



pdf("~/Desktop/bar_internet_user_number.pdf", width=5, height=4)

#d,l,u,r
par(mar = c(5, 5, 1, 1) + 0.1)
barpos = barplot(bar1, beside = FALSE, space = 0.75, 
                 ylim = c(0, 3500000000), axes = FALSE, 
                 main = '', sub = '(a)', xlab = 'Year', ylab = '', names.arg = rep('', 10),
                 col = 'blue', border = 'grey')
title(ylab= 'Internet User Count', mgp =c(4, 0.75, 0))
axis(side = 1, at = barpos, labels = c('2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016'), las = 2, mgp = c(3, 0.75, 0))
axis(side = 2, at = seq(0, 3500000000, 500000000), 
     labels = expression(0, 0.5 %*% 10^9, 1 %*% 10^9, 1.5 %*% 10^9, 2 %*% 10^9, 2.5 %*% 10^9, 3 %*% 10^9, 3.5 %*% 10^9), las = 1, mgp = c(3, 0.75, 0))

dev.off()



pdf("~/Desktop/bar_internet_user_pct.pdf", width=5, height=4)

#d,l,u,r
par(mar = c(5, 5, 1, 1) + 0.1)
barpos = barplot(bar2, beside = FALSE, space = 0.75, 
                 ylim = c(0, 0.5), axes = FALSE, 
                 main = '', sub = '(b)', xlab = 'Year', ylab = 'Percentage of Population', names.arg = rep('', 10),
                 col = 'red', border = 'grey')
axis(side = 1, at = barpos, labels = c('2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016'), las = 2, mgp = c(3, 0.75, 0))
axis(side = 2, at = seq(0, 0.5, 0.1), labels = seq(0, 0.5, 0.1), las = 1, mgp = c(3, 0.75, 0))

dev.off()
