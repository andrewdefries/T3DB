library(hwriter)

ToxinTable<-read.csv("toxins.csv")

#send to ChemmineR and hwriteR for html generation

library(ChemmineR)

ToxinTableOut<-cbind(ToxinTable[,5], ToxinTable[,11],ToxinTable[,28])#, ToxinTable[8])

#write.table(ToxinTableOut, file="T3DB_toxins_trim.csv", quote=TRUE, sep="", col.names=TRUE)





#do table without nnm or images

#do table with nnm and images


