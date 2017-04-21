percent = c(48.4, 21.8, 19, 9.8, 0.9)

pielabels = paste(percent, "%", sep="")
cols = c('yellow', 'red', 'green', 'black', 'blue')

pdf("~/Desktop/pie_internet_user.pdf", width = 5, height = 4)
#d,l,u,r
par(mar=c(0, 1, 0, 5) + 0.1, xpd = TRUE)
pie(percent, col = cols, labels = pielabels, cex = 0.8)
legend("topright",  c("Asia", "Americas", "Europe", "Africa", "Oceania"), cex = 0.85, fill = cols, bty = "n", inset=c(-0.2, 0))
text(x = 0.4, y = -1.1, "(b)", 1)
dev.off()
