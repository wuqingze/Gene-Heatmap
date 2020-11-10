fileName <- '../data/data-01'
str <- readChar(fileName, file.info(fileName)$size-1)
print(str)
