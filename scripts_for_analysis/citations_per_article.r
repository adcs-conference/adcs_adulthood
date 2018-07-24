setwd("/Users/bevan/phd/QISharedFolder/ADCS2013Impact/analysis/")
citations = read.table("../resources/citation_counts.txt", col.name=c("title", "citations"), sep="\t")

hcitations <- citations[order(citations$citations,decreasing=T),]

pdf("../latex/figures/citation_counts_plot.pdf", width=4, height=3)
par(mar=c(4,4,0,0))
hist(hcitations$citations, col="gray", breaks=60, xlab="Citations in Scholar", main="")
dev.off()

pdf("../latex/figures/citation_counts_hist.pdf", width=4, height=3)
par(mar=c(2,4,0,0.1))
plot(hcitations$citations, xlim=c(0,200), pch=4, cex=0.7, ylab="Citations in Scholar", xlab="")
legend("topright", legend="ADCS article", pch=4, bty="n")
dev.off()

mean(citations$citations)
median(citations$citations)