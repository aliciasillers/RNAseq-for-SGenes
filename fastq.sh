#!/bin/bash
#
#SBATCH --job-name=fastq
#SBATCH --ntasks=6 # Number of cores
#SBATCH --nodes=1 # Ensure that all cores are on one machine
#SBATCH --mem=32G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --partition=bmh # Partition to submit to
#SBATCH --output=fastq.out # File to which STDOUT will be written
#SBATCH --error=fastq.err # File to which STDERR will be written
#SBATCH --mail-type=END,FAIL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=asillers@ucdavis.edu # Email to which notifications will be$
#SBATCH --time=1:00:00

module load sratoolkit

fasterq-dump SRR8298764
