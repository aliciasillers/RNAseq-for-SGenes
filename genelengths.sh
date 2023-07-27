#!/bin/bash
#
#SBATCH --job-name=genelengths
#SBATCH --ntasks=10 # Number of cores
#SBATCH --nodes=1 # Ensure that all cores are on one machine
#SBATCH --mem=20G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --partition=bmh # Partition to submit to
#SBATCH --output=genelengths.out # File to which STDOUT will be written
#SBATCH --error=genelengths.err # File to which STDERR will be written
#SBATCH --mail-type=END,FAIL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=asillers@ucdavis.edu # Email to which notifications will be$
#SBATCH --time=08:00:00

set -e                                                                                  # Error if a single command fails
set -u                                                                                  # Error if un-named variables calledset -x  >
set -x

module load conda/latest
conda activate exp2

gtftools -l rrgenelengths.tsv /home/asillers/Genome/farr1.gene_models.gtf -c chr_1A,chr_1B,chr_1C,chr_1D,chr_2A,chr_2B,chr_2C,chr_2D,chr_3A,chr_3B,chr_3C,chr_3D,chr_4A,chr_4B,chr_4C,chr_4D,chr_5A,chr_5B,chr_5C,chr_5D,chr_6A,chr_6B,chr_6C,chr_6D,chr_7A,chr_7B,chr_7C,chr_7D,contig_01,contig_02,contig_03,contig_04,contig_05,contig_06,contig_07,contig_08,contig_09,contig_10,contig_11,contig_12,contig_13,contig_14,contig_15,contig_16,contig_17,contig_18,contig_19,contig_20
