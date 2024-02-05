#!/bin/bash
#SBATCH --partition=highmem_p
#SBATCH --job-name=FUMA
#SBATCH --ntasks=16
#SBATCH --nodes=1
#SBATCH --time=24:00:00
#SBATCH --mem=300GB
#SBATCH --output=FUMA.%j.out
#SBATCH --error=FUMA.%j.err
#SBATCH --mail-user=ahc87874@uga.edu
#SBATCH --mail-type=ALL

cd $SLURM_SUBMIT_DIR

module load R/4.3.1-foss-2022a
R CMD BATCH FUMA.R
