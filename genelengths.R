#parts of code adapted from https://github.com/dpryan79/Answers/blob/master/SEQanswers_42420/GTF2LengthGC.R

library(GenomicRanges)
library(rtracklayer)
library(Rsamtools)

#read in gtf file

path <- "/home/asillers/Genome/farr1.gene_models.gtf"
GTF <- import(path, format="gtf", genome="FaRR1", feature.type="exon")

#reduce

rGTF <- reduce(split(GTF, elementMetadata(GTF)$gene_id))
reducedGTF <- unlist(rGTF, use.names=TRUE)
elementMetadata(reducedGTF)$gene_id <- rep(names(rGTF), elementNROWS(rGTF))

#make table

data <- t(split(reducedGTF, elementMetadata(reducedGTF)$gene_id))
output <- data
colnames(output) <- c("Length")

#write output

write.table(output, "genelengths.tsv", sep="\t", row.names=FALSE, col.names=TRUE, quote=FALSE)
