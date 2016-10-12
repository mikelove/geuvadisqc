file <- "../qcstats/GD667.QCstats.txt"
library(readr)
qc <- read_delim(file,"\t")
library(rafalib)
means <- sapply(split(qc$GC_hist_bins_70, qc$Operator), mean)
o <- order(means)
qc$Operator <- factor(qc$Operator)
qc$Operator <- factor(qc$Operator, levels=levels(qc$Operator)[o])
lvls <- levels(qc$Operator)
levels(qc$Operator)[lvls == "MPIMG_S_DOKEL"] <- "MPIMG"
bigpar(3,3,mar=c(8,4,1,1))
for (i in 12:19) {
  boxplot(qc[[paste0("GC_hist_bins_",i*5)]] ~ qc$Operator,
          las=3)
  legend("topleft",legend=paste0("GC=",i*5),bty="n",pch=NA,cex=2)
}
