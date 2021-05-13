library(tmcn)
library(tm)
library(Rwordseg)

data <- readLines('./data/7410 GP/children_M6.csv',encoding = 'UTF-8')
data <- segmentCN(data)
data

data <- unlist(data)
data <- createWordFreq(data,
                       onlyCN = TRUE,
                       nosymbol = TRUE,
                       stopwords = c('不','喜欢','无','兴趣','会'),
                       useStopDic = T)
data

write.csv(data,'./data/7410 GP/fre_children_M6.csv')
