#!/bin/bash
#
#SBATCH --job-name=fastqc
#SBATCH --ntasks=12 # Number of cores
#SBATCH --nodes=1 # Ensure that all cores are on one machine
#SBATCH --mem=32G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --partition=bmh # Partition to submit to
#SBATCH --output=fastqc.out # File to which STDOUT will be written
#SBATCH --error=fastqc.err # File to which STDERR will be written
#SBATCH --mail-type=END,FAIL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=asillers@ucdavis.edu # Email to which notifications will be$
#SBATCH --time=12:00:00

module load fastqc

fastqc SRR10076578_1.fastq SRR10076578_2.fastq SRR10076579_1.fastq SRR10076579_2.fastq SRR10076584_1.fastq SRR10076584_2.fastq SRR10076587_1.fastq SRR10076587_2.fastq SRR11794975.fastq SRR11794980.fastq SRR5241935_1.fastq SRR5241935_2.fastq SRR5241937_1.fastq SRR5241937_2.fastq SRR5241942_1.fastq SRR5241942_2.fastq SRR5826131_1.fastq SRR5826131_2.fastq SRR5826134_1.fastq SRR5826134_2.fastq SRR5826136_1.fastq SRR5826136_2.fastq SRR5826138_1.fastq SRR5826138_2.fastq SRR6995967_1.fastq SRR6995967_2.fastq SRR6995969_1.fastq SRR6995969_2.fastq SRR6995971_1.fastq SRR6995971_2.fastq SRR7157738_1.fastq SRR7157738_2.fastq SRR7157740_1.fastq SRR7157740_2.fastq SRR8298763_1.fastq SRR8298763_2.fastq SRR8298764_1.fastq SRR8298764_2.fastq SRR8298765_1.fastq SRR8298765_2.fastq SRR8298766_1.fastq SRR8298766_2.fastq SRR8298767_1.fastq SRR8298767_2.fastq SRR8298768_1.fastq SRR8298768_2.fastq SRR8298769_1.fastq SRR8298769_2.fastq SRR8298770_1.fastq SRR8298770_2.fastq SRR8298771_1.fastq SRR8298771_2.fastq SRR8298772_1.fastq SRR8298772_2.fastq
