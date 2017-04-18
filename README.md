# slurm
submission scripts for SLURM job scheduler

[Documentation](http://www.sdsc.edu/support/user_guides/comet.html#running)

## Run an interactive job

**Note: the interactive job must end with `--pty bash`**
```
srun --partition=shared -c NUM_CORES -t WALLTIME_IN_MINUTES --pty bash
```
