#!/bin/bash
#SBATCH --job-name=fastqc_jarojas
#SBATCH --output=fastqc_job1.slurm
#SBATCH --nodes=1
#SBATCH --tasks-per-node=8
$SBATCH --time=00:05:00
#SBATCH --partition comp06

module purge
module load java
module load fastqc

cd ~/Lecture_6
fastqc *.fastq.gz
