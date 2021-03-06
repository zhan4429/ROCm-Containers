.. _backbone-label:

Cp2k
==============================

Introduction
~~~~~~~~
CP2K is a quantum chemistry and solid state physics software package that can perform atomistic simulations of solid state, liquid, molecular, periodic, material, crystal, and biological systems. CP2K provides a general framework for different modeling methods such as DFT using the mixed Gaussian and plane waves approaches GPW and GAPW. Supported theory levels include DFTB, LDA, GGA, MP2, RPA, semi-empirical methods (AM1, PM3, PM6, RM1, MNDO, ...), and classical force fields (AMBER, CHARMM, ...). CP2K can do simulations of molecular dynamics, metadynamics, Monte Carlo, Ehrenfest dynamics, vibrational analysis, core level spectroscopy, energy minimization, and transition state optimization using NEB or dimer method. CP2K is written in Fortran 2008 and can be run efficiently in parallel using a combination of multi-threading, MPI, and HIP/CUDA.
For more information, please check:
Home page: http://www.cp2k.org/ 
Docker: https://www.amd.com/en/technologies/infinity-hub/cp2k

Versions
~~~~~~~~
- 20210311--h87ec1599

Commands
~~~~~~~
- cp2k.psmp
- cp2k.popt
- cp2k_shell.psmp
- dumpdcd.psmp
- graph.psmp
- grid_miniapp.psmp
- xyz2dcd.psmp
- benchmark
- mpirun
- mpiexec
- ompi_info

Module
~~~~~~~~
You can load the modules by::

    module load rocmcontainers
    module load cp2k

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run cp2k on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=cp2k
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml rocmcontainers cp2k

