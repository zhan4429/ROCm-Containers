.. _backbone-label:

Gromacs
==============================

Introduction
~~~~~~~~
GROMACS is a molecular dynamics application designed to simulate Newtonian equations of motion for systems with hundreds to millions of particles. GROMACS is designed to simulate biochemical molecules like proteins, lipids, and nucleic acids that have a lot of complicated bonded interactions. This container, based on a released version of GROMACS, is an AMD beta version with ongoing optimizations. This container only supports up to a 4 GPU configuration.
For more information, please check:
Home page: https://www.gromacs.org 
Docker: https://www.amd.com/en/technologies/infinity-hub/gromacs

Versions
~~~~~~~~
- 2020.3

Commands
~~~~~~~
- gmx
- gmx_mpi
- demux.pl
- xplor2gmx.pl
- mpirun
- mpiexec
- ompi_info

Module
~~~~~~~~
You can load the modules by::

    module load rocmcontainers
    module load gromacs

Example job
~~~~~
To run gromacs on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=gromacs
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml rocmcontainers gromacs

