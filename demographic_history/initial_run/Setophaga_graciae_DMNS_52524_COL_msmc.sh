#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-name=Setophaga_graciae_DMNS_52524_COL_msmc
#SBATCH --nodes=1 --ntasks=8
#SBATCH --partition quanah
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G

/lustre/work/johruska/msmc_2.0.0_linux64bit -o ./Setophaga_graciae_DMNS_52524_COL/msmc_output -t 8 -i 20  -p 1*2+20*1+1*2+1*3 ./Setophaga_graciae_DMNS_52524_COL/multihetsep/*.txt -m 0.002587944 -I 0,1
