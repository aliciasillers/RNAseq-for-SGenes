library(tidyverse)
library(DBI)
library(reshape)

# read and process data 

pmr4expr <- read.delim("frpkm.tsv", header = TRUE)
meltexpr <- melt(pmr4expr)

# heatmap

png("pmr4exp.png")

myplot <- ggplot(meltexpr, aes(counts$gene, variable)) + geom_tile(aes(fill = value)) + scale_fill_gradient(low = "pink", high = "maroon")

print(myplot)
dev.off()
