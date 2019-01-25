#!/bin/sh

## Sets up reaction-specific names etc.
## and submits the slurm_rxn to SLURM

export jobname="rxn"$1
#####################################################
sbatch --chdir=$jobname \
 --job-name=$jobname \
 --error=$jobname.error.log \
 --output=$jobname.log \
 --export=ALL,gaussianfile=$jobname.com
 slurm_rxn.sh  
