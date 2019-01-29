#!/bin/sh
## Run the $gaussianfile in g16

## time you think you need; default is one day
## d-hh:mm:ss
## 0 is unlimited (only on 'west' partition)
#SBATCH --time=0

## number of tasks you are requesting
#SBATCH -N 1
#SBATCH -n 20

##SBATCH --ntasks-per-node=1
##SBATCH --exclusive
##SBATCH --mem=110GB

## partition to use.
#SBATCH --partition=west

## an array for the job.
##SBATCH --array=1

#####################################################
g16 $gaussianfile 
