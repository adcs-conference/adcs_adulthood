setwd("/Users/bevan/phd/QISharedFolder/ADCS2013Impact/analysis/")
published = read.table("published.txt", col.name=c("year", "published"))
scholar = read.table("citation_per_year_agg.txt", col.name=c("scholar", "year"))

#require( tikzDevice )
pdf("../latex/figures/article_coverage.pdf", width=4, height=3)
#tikz("../latex/figures/article_coverage.tex", width=3, height=3)
par(mar=c(3,4,0,0)+0.1)
barplot(published$published, names.arg=published$year, las=2, col="white", ylab="Number of articles", cex.names=0.8)
barplot(scholar$scholar, add=T,  axes=F)
legend("topright", c("Published", "Found in Scholar"), fill=c("white", "gray"), cex=0.8, bty="n")
dev.off()


pdf("../../../papers/adcs2013-impact/presentation/papers_per_year.pdf", width=4, height=3)
#tikz("../latex/figures/article_coverage.tex", width=3, height=3)
par(mar=c(3,4,0,0)+0.1)
barplot(published$published, names.arg=published$year, las=2, col="white", ylab="Number of articles", cex.names=0.8)
#barplot(scholar$scholar, add=T,  axes=F)
#legend("topright", c("Published in ADCS", "Publish in ADCS and Found in Scholar"), fill=c("white", "gray"), cex=0.8, bty="n")
dev.off()

sum(published$published)
mean(published$published)
sd(published$published)

sum(scholar$scholar)