#!/bin/bash
#
#SBATCH --job-name=starmap
#SBATCH --ntasks=12 # Number of cores
#SBATCH --nodes=1 # Ensure that all cores are on one machine
#SBATCH --mem=32G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --partition=bmh # Partition to submit to
#SBATCH --output=starmap.out # File to which STDOUT will be written
#SBATCH --error=starmap.err # File to which STDERR will be written
#SBATCH --mail-type=END,FAIL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=asillers@ucdavis.edu # Email to which notifications will be$
#SBATCH --time=12:00:00

module load star

STAR --runThreadN 12 --genomeDir genomeDir --readFilesIn SRR11794975.fastq --outFileNamePrefix Mapped/SRR11794975
