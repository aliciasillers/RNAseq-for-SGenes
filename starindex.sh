#!/bin/bash
#
#SBATCH --job-name=starindex
#SBATCH --ntasks=12 # Number of cores
#SBATCH --nodes=1 # Ensure that all cores are on one machine
#SBATCH --mem=32G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --partition=bmh # Partition to submit to
#SBATCH --output=starindex.out # File to which STDOUT will be written
#SBATCH --error=starindex.err # File to which STDERR will be written
#SBATCH --mail-type=END,FAIL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=asillers@ucdavis.edu # Email to which notifications will be$
#SBATCH --time=12:00:00

module load star

STAR --runThreadN 12 --runMode genomeGenerate --genomeDir genomeDir --genomeFastaFiles /home/asillers/Genome/farr1.fa --sjdbGTFfile /home/asillers/Genome/farr1.gene_models.gtf --sjdbOverhang 100
