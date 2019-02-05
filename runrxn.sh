#!/bin/sh

## Sets up reaction-specific names etc.
## and submits the slurm_rxn to SLURM

## Run it with the path to the gaussian file, like this:
## $ ./runrxn.sh jobs/rxn907/rxn907-final.com

export filename=$(basename "$1")  # eg. rxn907-final.com
export jobname="${filename%.*}"   # eg. rxn907-final
export directory=$(dirname "$1")  # eg. jobs/rxn907

export gaussianfile=$filename
#####################################################
sbatch --chdir=$directory \
 --job-name=$jobname \
 --error=$jobname.error.log \
 --output=$jobname.log \
 --export=ALL,gaussianfile=$filename\
 slurm_rxn.sh ;
echo "Submitted $filename in $directory with job name $jobname"