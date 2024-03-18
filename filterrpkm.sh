#!/bin/bash
#
#SBATCH --job-name=filterrpkm
#SBATCH --ntasks=2 # Number of cores
#SBATCH --nodes=1 # Ensure that all cores are on one machine
#SBATCH --mem=22G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --partition=bmh # Partition to submit to
#SBATCH --output=filterrpkm.out # File to which STDOUT will be written
#SBATCH --error=filterrpkm.err # File to which STDERR will be written
#SBATCH --mail-type=END,FAIL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=asillers@ucdavis.edu # Email to which notifications will be$
#SBATCH --time=4:00:00

awk '{ if ($1 == "Fxa6Ag102517" || $1 == "Fxa6Bg102293" || $1 == "Fxa6Cg102198" || $1 == "Fxa6Dg102174" || $1 == "counts$gene") { print } }' rpkm.tsv > frpkm.tsv
