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

fastqc ERR1817363_1.fastq ERR1817363_2.fastq ERR1817364_1.fastq ERR1817364_2.fastq ERR1817365_1.fastq ERR1817365_2.fastq ERR1817366_1.fastq ERR1817366_2.fastq ERR1817367_1.fastq ERR1817367_2.fastq ERR1817368_1.fastq ERR1817368_2.fastq
