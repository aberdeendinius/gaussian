#!/bin/sh
#set a job name
#SBATCH --job-name=$1
#a file for job output, you can check job progress
#SBATCH --output=$1.log

# a file for errors from the job
#SBATCH --error=$1.slurm.log

#time you think you need; default is one day
# d-hh:mm:ss
##SBATCH --time=0

#number of tasks you are requesting
#SBATCH -N 1
#SBATCH -n 20
##SBATCH --ntasks-per-node=1
#SBATCH --exclusive
##SBATCH --mem=110GB

#partition to use.
#SBATCH --partition=west

#an array for the job.
#SBATCH --array=1


#####################################################
g16 $1 
