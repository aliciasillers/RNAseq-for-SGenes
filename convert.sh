#!/bin/bash
#
#SBATCH --job-name=convert
#SBATCH --ntasks=12 # Number of cores
#SBATCH --nodes=1 # Ensure that all cores are on one machine
#SBATCH --mem=32G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --partition=bmh # Partition to submit to
#SBATCH --output=convert.out # File to which STDOUT will be written
#SBATCH --error=convert.err # File to which STDERR will be written
#SBATCH --mail-type=END,FAIL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=asillers@ucdavis.edu # Email to which notifications will be$
#SBATCH --time=12:00:00
#SBATCH --array=1-34

module load samtools

file1=$(ls Mapped/*.sam | sed -n ${SLURM_ARRAY_TASK_ID}p)
name=$(ls Mapped/*.sam | awk -F'[.]' '{print $1}' | sed -n ${SLURM_ARRAY_TASK_ID}p)

samtools sort $file1 --write-index -o ${name}.bam##idx##${name}.bam.bai
