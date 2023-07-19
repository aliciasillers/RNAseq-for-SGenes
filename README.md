# RNAseq for Expression Analysis of Candidate Susceptibility Genes

Some scripts are not generalized and will need to be modified to run with different input data. Workflow steps and associated scripts are as follows:

## Obtaining publicly available data
1. getdata.sh
2. fastq.sh 
## Checking data quality
1. fastqc.sh
2. fastqcunzip.sh
## Generate count table
1. starindex.sh
2. starmap.sh
3. convert.sh
4. countall.sh
## Generate list of gene lengths
## Calculate normalized expression (RPKM and TPM)
