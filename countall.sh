#!/bin/bash
#
#SBATCH --job-name=count
#SBATCH --ntasks=20 # Number of cores
#SBATCH --nodes=1 # Ensure that all cores are on one machine
#SBATCH --mem=32G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --partition=bmh # Partition to submit to
#SBATCH --output=countall.out # File to which STDOUT will be written
#SBATCH --error=countall.err # File to which STDERR will be written
#SBATCH --mail-type=END,FAIL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=asillers@ucdavis.edu # Email to which notifications will be$
#SBATCH --time=2-00:00:00

module load htseq

file=$(ls Mapped/*.bam)

htseq-count $file /home/asillers/Genome/farr1.gene_models_updated_2025-04-15.gtf -c Counted/allcounts.tsv -s no

