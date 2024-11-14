#!/bin/bash
#
#SBATCH --job-name=trim
#SBATCH --ntasks=10 # Number of cores
#SBATCH --nodes=1 # Ensure that all cores are on one machine
#SBATCH --mem=56G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --partition=bmh # Partition to submit to
#SBATCH --output=trim.out # File to which STDOUT will be written
#SBATCH --error=trim.err # File to which STDERR will be written
#SBATCH --mail-type=END,FAIL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=asillers@ucdavis.edu # Email to which notifications will be$
#SBATCH --time=8:00:00
#SBATCH --array=1-32

module load trimmomatic

file1=$(ls *1.fastq | sed -n ${SLURM_ARRAY_TASK_ID}p)
file2=$(ls *2.fastq | sed -n ${SLURM_ARRAY_TASK_ID}p)
prefix=$(ls *1.fastq | sed -n ${SLURM_ARRAY_TASK_ID}p | awk -F'[_]' '{print $1}')

trimmomatic PE $file1 \
$file2 \
$prefix.1_paired.trimmed.fastq \
$prefix.1_unpaired.trimmed.fastq \
$prefix.2_paired.trimmed.fastq \
$prefix.2_unpaired.trimmed.fastq \
SLIDINGWINDOW:4:20 MINLEN:50
