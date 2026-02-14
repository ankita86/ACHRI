#! /bin/bash
#-----------------------------------------
#SBATCH --job-name=index-job
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=150G
#SBATCH --time=0-10:00:00
#SBATCH --partition=cpu2023
#SBATCH --output="%x_%j.out"
#SBATCH --error="%x_%j.err"
#-----------------------------------------
 module load bioconda/2024-10

STAR --runThreadN 10 --runMode genomeGenerate --genomeDir star-index --genomeFastaFiles ~/RNASeqWorkshop2026_Bundle/genome/GCF_000001405.40_GRCh38.p14_genomic.fna
#STAR --runThreadN 10 --runMode genomeGenerate --genomeDir star-index --genomeFastaFiles $PWD/genome/GCF_000001405.40_GRCh38.p14_genomic.fna
