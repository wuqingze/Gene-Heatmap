#install.packages("pheatmap")

#rt=read.table("../data/gene-data-00",sep=",",header=T,row.names=1,check.names=F)    #��ȡ�ļ�
rt=read.table("../data/gene-data-00",sep=",",header=T,row.names=1,check.names=F)    #��ȡ�ļ�
rt=log2(rt+0.001)
outpdf="heatmap.pdf"

library(pheatmap)
#Type=read.table("../data/type-00",sep=",",header=T,row.names=1,check.names=F)
Type=read.table("../data/type-00",sep=",",header=T,row.names=1,check.names=F)

print(len(Type))
quit()
pdf(outpdf,height=15,width=18)
pheatmap(rt, annotation=Type, 
         color = colorRampPalette(c("green", "black", "red"))(50),
         cluster_cols =F,
         fontsize=14,
         fontsize_row=2,
         fontsize_col=3)
dev.off()

######������ѧ��: http://study.163.com/u/biowolf
######������ѧ��: https://shop119322454.taobao.com
######������ѧ��: http://www.biowolf.cn/
######�������䣺2740881706@qq.com
######����΢��: seqBio
######QQȺ:  259208034
