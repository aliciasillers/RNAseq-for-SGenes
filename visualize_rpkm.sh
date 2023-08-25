#!/bin/bash
#
#SBATCH --job-name=visualize_rpkm
#SBATCH --ntasks=2 # Number of cores
#SBATCH --nodes=1 # Ensure that all cores are on one machine
#SBATCH --mem=22G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --partition=bmh # Partition to submit to
#SBATCH --output=visualize_rpkm.out # File to which STDOUT will be written
#SBATCH --error=visualize_rpkm.err # File to which STDERR will be written
#SBATCH --mail-type=END,FAIL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=asillers@ucdavis.edu # Email to which notifications will be$
#SBATCH --time=8:00:00

set -e                                                                                  # Error if a single command fails
set -u                                                                                  # Error if un-named variables calledset -x  >
set -x

module load conda/latest
conda activate exp

Rscript --vanilla --verbose visualize_rpkm.R
