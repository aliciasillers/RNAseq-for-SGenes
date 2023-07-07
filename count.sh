#!/bin/bash
#
#SBATCH --job-name=count
#SBATCH --ntasks=12 # Number of cores
#SBATCH --nodes=1 # Ensure that all cores are on one machine
#SBATCH --mem=32G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --partition=bmh # Partition to submit to
#SBATCH --output=count.out # File to which STDOUT will be written
#SBATCH --error=count.err # File to which STDERR will be written
#SBATCH --mail-type=END,FAIL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=asillers@ucdavis.edu # Email to which notifications will be$
#SBATCH --time=12:00:00
#SBATCH --array=1-34

module load deprecated/htseq/2.0.2

file=$(ls Mapped/*.bam | sed -n ${SLURM_ARRAY_TASK_ID}p)
name=$(ls Mapped/*.bam | awk -F'[/.]' '{print $2}' | sed -n ${SLURM_ARRAY_TASK_ID}p)

htseq-count $file /home/asillers/Genome/farr1.gene_models.gtf -c Counted/$name.tsv -s no
