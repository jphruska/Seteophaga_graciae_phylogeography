#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-name=Setophaga_graciae_KU_8199_SANA_multihetsep_bootstrap
#SBATCH --nodes=1 --ntasks=8
#SBATCH --partition quanah
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G

/lustre/work/johruska/msmc-tools/multihetsep_bootstrap.py -n 20 -s 1000000 --chunks_per_chromosome 30 --nr_chromosomes 29 --seed 324324 ./Setophaga_graciae_KU_8199_SANA/multihetsep/bootstraps/bootstrap ./Setophaga_graciae_KU_8199_SANA/multihetsep/*.txt
