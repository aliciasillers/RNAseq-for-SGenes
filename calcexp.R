library(tidyverse)
library(DBI)

#read in files

countpath <- "Counted/allcounts.tsv"
genelengthpath <- "rrgenelengths.tsv"

counts <- read.delim(countpath, header=TRUE, sep="\t")
counts <- as.data.frame(counts)
counts <- sqlColumnToRownames(counts, row.names="gene")

genelengths <- read.delim(genelengthpath, header=TRUE, sep="\t")
genelength.mean <- as.vector(genelengths[,2])

#calculate reads per kilobase per million (rpkm)

rpkm.fun <- function(column) {
	
	10^9 * column/genelength.mean/sum(column)
}
exp.rpkm <- data.frame(sapply(counts, rpkm.fun))

#write output

counts <- sqlRownamesToColumn(counts, row.names = "gene")
output <- cbind(counts$gene, exp.rpkm)

write.table(output, "rpkm.tsv", sep="\t", quote=FALSE, row.names=FALSE)
