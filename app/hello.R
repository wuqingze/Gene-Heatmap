#install.packages("pheatmap")
library(pheatmap)
# 清除当前环境中的变量
rm(list=ls())
test = matrix(rnorm(200), 20, 10)
test[1:10, seq(1, 10, 2)] = test[1:10, seq(1, 10, 2)] + 3
test[11:20, seq(2, 10, 2)] = test[11:20, seq(2, 10, 2)] + 2
test[15:20, seq(2, 10, 2)] = test[15:20, seq(2, 10, 2)] + 4
colnames(test) = paste("Test", 1:10, sep = "")
rownames(test) = paste("Gene", 1:20, sep = "")
outpdf="heatmap.pdf"
#head(test)
print(test)
pheatmap(test)
hello <- "hello world"
print(hello)
