#!/bin/sh

#number of tasks you are requesting
#SBATCH -N 1
#SBATCH -n 20
##SBATCH --ntasks-per-node=1
#SBATCH --mem=120000

#partition to use.
#SBATCH --partition=general

#an array for the job.
#SBATCH --array=1


#####################################################
#module unload openmpi/3.1.2
#module unload openmpi/3.1.1
#module load gaussian/g16
#source /shared/centos7/gaussian/g16/bsd/g16.profile
g16 <$1> $2  
