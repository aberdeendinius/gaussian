#!/bin/sh
#set a job name
sbatch --job-name=rxn931

#a file for job output, you can check job progress
sbatch --output=rxn931.%a.slurm.log

# a file for errors from the job
sbatch --error=rxn931.%a.slurm.log


#number of tasks you are requesting
#SBATCH -N 1
#SBATCH -n 10
##SBATCH --ntasks-per-node=2
##SBATCH --exclusive

#partition to use.
#SBATCH --partition=general

#number of nodes to distribute n tasks across
#SBATCH -N 1



#####################################################

# the "stdbuf -o0 -e0"  and the "-u" are to disable buffering,
# so that you see output from the script in the log files immediately.

# the 2>&1 creates a comined log file that contains the output log file and the error log file.

g16 rxn931.com 
