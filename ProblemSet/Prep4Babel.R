##################
library(ChemmineR)
##################

table<-read.csv("toxin_db_ready4json.csv")

write.table(table[,3:2], file="T3DB_4_Babel.smi", quote=F, sep="\t", col.names=F, row.names=F)

system("babel T3DB_4_Babel.smi -O T3DB_4_Babel.sdf --gen2d")
#only converts 40 compounds

#gives 913 molecules, most are elemental salts
#where are the missing molecules
smiset<-read.SMIset("T3DB_4_Babel.smi")

#############################
smiset<-as(smiset, "SMIset")
sdfset<-smiles2sdf(smiset)
############################
#valid <- validSDF(sdfset)
#sdfset <- sdfset[valid]
#apset<-sdf2ap(sdfset)
#sdfset<-sdfset[-which(sapply(as(apset, "list"), length)==1)]
###########################
