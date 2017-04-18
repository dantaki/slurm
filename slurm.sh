#!/bin/bash
#SBATCH --partition=shared
#SBATCH -c 1 # number of CPUs
#SBATCH -N 1 # number of nodes
#SBATCH -t 0-08:00 # walltime DAYS-HOURS-MINUTES
#SBATCH --job-name=FOO
#SBATCH -o PATH_TO_LOGS/FOO_out # standard output
#SBATCH -e PATH_TO_LOGS/FOO_err # error messages

##SBATCH --mail-type=ALL # Send init, completion, and errors
##SBATCH --mail-user=MY_EMAIL@foo.com

# Commands go here
