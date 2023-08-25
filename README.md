# RNAseq for Expression Analysis of Candidate Susceptibility Genes

Some scripts are not generalized and will need to be modified to run with different input data. Workflow steps and associated scripts are as follows:

## Creating conda environment
1. condaenv.sh
## Obtaining publicly available data
1. getdata.sh
2. fastq.sh 
## Checking data quality
1. fastqc.sh
2. fastqcunzip.sh
## Generating count table
1. starindex.sh
2. starmap.sh
3. convert.sh
4. countall.sh
## Calculating normalized expression (RPKM)
1. genelengths.sh 
2. calcexp.sh
## Visualization
1. filterrpkm.sh
2. visualize_rpkm.sh
