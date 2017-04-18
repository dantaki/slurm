#!/bin/bash
#SBATCH --partition=shared
#SBATCH -c 16 # Number of CPUs for each job spawned. Hence, each job will use 16 cores
#SBATCH -t 0-04:00 # Walltime Days-Hours-Minutes
#SBATCH --job-name=FOO
#SBATCH -o PATH_TO_LOGS/FOO_%a_out # %a is the job array index
#SBATCH -e PATH_TO_LOGS/FOO_%a_err
#SBATCH --array=1-8%4 # Job array argument. Run 8 jobs, running 4 at the same time: 1-N%NUMBER_SIMULTANEOUS_JOBS

SEED=$(cat FILE_WITH_COMMANDS | head -n $SLURM_ARRAY_TASK_ID | tail -n 1 | awk "{print $1}")
$SEED

# FILE_WITH_COMMANDS is a file that contains the commands you wish to run.
# For example, the first line could be 'echo "hello world 1"', the second line will be 'echo "hello world 2"' and so on...
# When initialized, this example will submit the first four lines each as a separate job, when a job completes the 5th line is submitted
#    the process continues until the command on the 8th line is finished. 
