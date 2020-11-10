setwd("./")
library(pheatmap)
rt = read.csv("../data/gene-data-03", sep=",", row.names=1) 
rt=log2(rt+0.001)
#temp1 <- as.matrix(temp)
#print(temp)
#colnames(temp1) = c("1-", "..2", "he3", 4)
#rownames(temp1) = c("jk", "h2", "h3", "h5")
#colnames(temp1) = c(1, 2, 3, 4)
#rownames(temp1) = c(1, 2, 3, 4)
#colnames(temp1) = paste("Test", 1:5, sep = "")
#rownames(temp1) = paste("Gene", 1:5, sep = "")
outpdf="heatmap.pdf"
pdf(outpdf,height=70,width=18)
pheatmap(rt,
         cluster_cols =F,
         fontsize=11,
         fontsize_row=1,
         fontsize_col=2)
#dev.off()
#print(temp1)
