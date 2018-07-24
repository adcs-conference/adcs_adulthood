setwd("/Users/bevan/phd/QISharedFolder/ADCS2013Impact/analysis")
countries = read.table("international_contribution.txt", header=T)

# # old portion
# pdf("../latex/figures/international_contributions_portion.pdf", width=4, height=2)
# par(mar=c(3,3.5,0,0))
# plot(countries$Year, countries$International, cex=0.8, type="o", xlim=c(1996, 2012), ylim=c(0,0.5), ylab="", xaxt="n", yaxt="n", xlab="")
# #title(ylab="Portion of non-Aus. Authors", cex.lab=0.7)
# mtext(side=2, "Portion of non-Aus. Authors", line=2.5, cex=0.7)
# axis(side=1, at=c(1996:2012), las=2, cex.axis=0.7)
# axis(side=2, at=c(0.0, 0.1,0.2,0.3,0.4,0.5), las=1, cex.axis=0.7, lab=c("0%", "10%","30%","30%","40%","50%"), las=TRUE)
# abline(h=mean(countries$International), col = "black", lty=2)
# dev.off()


pdf("../latex/figures/international_contributions_exNZ.pdf", width=4, height=5.83)
par(mar=c(9.15,4,0.5,0))
barplot(rbind(countries$Int,countries$NZ,countries$Oz),ylim=c(0,71), beside=FALSE,legend=TRUE, las=3, names=paste(countries$Location," ", countries$Year), pch=4, col=c("darkgray", "white", "lightgrey"), ylab="Number of authors")
abline(h=mean(countries$Oz))
abline(h=mean(countries$Int), lty=2)
abline(h=mean(countries$NZ), lty=3)
#legend("topleft", legend=c("Aus.", "non-Aus.","Mean Aus.","Mean non-Aus."), horiz=F, border=c("black","black", NA, NA), fill=c("gray", "white", NA, NA), bty="n", cex=0.9, lty=c(NA,NA,1,2))
legend("topleft", legend=c("Australian", "NZ", "International"), fill=c("lightgray", "white", "darkgrey"), bty="n", cex=0.85)
legend("topright", legend=c("Mean Australian", "Mean NZ", "Mean International"), lty=c(1,3,2), bty="n", cex=0.85)
dev.off()





pdf("../latex/figures/international_contributions.pdf", width=8, height=6)
par(mar=c(9.15,4,0.5,0))
barplot(rbind(countries$Int,countries$NZ,countries$Oz),ylim=c(0,71), beside=FALSE,legend=TRUE, las=3, names=paste(countries$Location," ", countries$Year), pch=4, col=c("darkgray", "white", "lightgrey"), ylab="Number of authors")
abline(h=mean(countries$Oz))
abline(h=mean(countries$Int), lty=2)
abline(h=mean(countries$NZ), lty=3)
#legend("topleft", legend=c("Aus.", "non-Aus.","Mean Aus.","Mean non-Aus."), horiz=F, border=c("black","black", NA, NA), fill=c("gray", "white", NA, NA), bty="n", cex=0.9, lty=c(NA,NA,1,2))
legend("topleft", legend=c("Australian", "NZ", "International"), fill=c("lightgray", "white", "darkgrey"), bty="n", cex=0.85)
legend("topright", legend=c("Mean Australian", "Mean NZ", "Mean International"), lty=c(1,3,2), bty="n", cex=0.85)
dev.off()

pdf("../../../papers/adcs2013-impact/presentation/authors_by_year.pdf", width=8, height=6)
par(mar=c(9.15,4,0.5,0))
barplot((countries$Int+countries$NZ+countries$Oz),ylim=c(0,71), beside=FALSE,legend=TRUE, las=3, names=paste(countries$Location," ", countries$Year), pch=4, col=c("white"), ylab="Number of authors")
abline(h=mean(countries$Oz))
dev.off()

mean(countries$Oz)

mean(countries$NZ + countries$Int)
sd(countries$NZ + countries$Int)

mean(countries$Int)
sd(countries$Int)


