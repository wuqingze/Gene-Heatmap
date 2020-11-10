# NOT RUN {
## using count.fields to handle unknown maximum number of fields
## when fill = TRUE
test1 <- c(1:5, "6,7", "8,9,10")
tf <- tempfile()
writeLines(test1, tf)
#
read.csv(tf, fill = TRUE) # 1 column
ncol <- max(count.fields(tf, sep = ","))
read.csv(tf, fill = TRUE, header = FALSE,
         col.names = paste0("V", seq_len(ncol)))
#unlink(tf)
#
### "Inline" data set, using text=
### Notice that leading and trailing emptjjjy lines are auto-trimmed
#
#read.table(header = TRUE, text = "
#a b
#1 2
#3 4
#")
## }
