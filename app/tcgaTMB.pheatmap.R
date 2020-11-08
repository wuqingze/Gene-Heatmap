#install.packages("pheatmap")

setwd("C:\\Users\\lexb4\\Desktop\\tcgaTMB\\16.heatmap")      #设置工作目录
rt=read.table("heatmap.txt",sep="\t",header=T,row.names=1,check.names=F)    #读取文件
rt=log2(rt+0.001)
outpdf="heatmap.pdf"

library(pheatmap)
Type=read.table("type.txt",sep="\t",header=T,row.names=1,check.names=F)

pdf(outpdf,height=15,width=18)
pheatmap(rt, annotation=Type, 
         color = colorRampPalette(c("green", "black", "red"))(50),
         cluster_cols =F,
         fontsize=14,
         fontsize_row=2,
         fontsize_col=3)
dev.off()


######生信自学网: http://study.163.com/u/biowolf
######生信自学网: https://shop119322454.taobao.com
######生信自学网: http://www.biowolf.cn/
######作者邮箱：2740881706@qq.com
######作者微信: seqBio
######QQ群:  259208034

