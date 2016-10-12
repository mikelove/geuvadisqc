file <- "../qcstats/GD667.QCstats.txt"
library(readr)
qc <- read_delim(file,"\t")
dim(qc)
