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
module unload openmpi/3.1.2
module unload openmpi/3.1.1
module load openmpi/2.0.4
/shared/apps/orca/orca_4_0_1_linux_x86-64_openmpi202/orca $1 
