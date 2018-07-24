setwd("/Users/bevan/phd/QISharedFolder/ADCS2013Impact/analysis")
library(RColorBrewer)
library(gplots)

themes = read.table("themes.txt", sep="&", header=T, check.names = FALSE)
row.names(themes) <- themes$Topic
t <- themes
themes <- themes[,3:18]
themes_matrix <- data.matrix(themes)

pdf("../latex/figures/themes_heatmap.pdf", width=8, height=8)
par(mar=c(2,2,2,2))
color.palette  <- colorRampPalette(c(123, "lightgray", "darkgray", "black"))(4)
colors= gray.colors(17, start = 1, end = 0)
heatmap.2(themes_matrix, margins=c(3,12), Rowv=NA, Colv=NA, scale= "none", trace= "none", key= F, col=colors, cexRow=0.9, cexCol=1.05)
dev.off()

pdf("../../../papers/adcs2013-impact/presentation/topics.pdf", width=12, height=8)
par(mar=c(2,2,2,2))
color.palette  <- colorRampPalette(c(123, "lightgray", "darkgray", "black"))(4)
colors= gray.colors(17, start = 1, end = 0)
heatmap.2(themes_matrix, margins=c(3,12), Rowv=NA, Colv=NA, scale= "none", trace= "none", key= F, col=colors, cexRow=0.9, cexCol=1.05)
dev.off()