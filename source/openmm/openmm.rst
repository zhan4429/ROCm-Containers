.. _backbone-label:

Openmm
==============================

Introduction
~~~~~~~~
OpenMM is a high-performance toolkit for molecular simulation. It can be used as an application, a library, or a flexible programming environment. OpenMM includes extensive language bindings for Python, C, C++, and even Fortran. The code is open source and developed on GitHub, licensed under MIT and LGPL. This module defines program installation directory (note: inside the container!) as environment variable $OPENMM_PATH. Once again, this is not a host path, this path is only available from inside the container. Most likely you will not need it for production simulations, but it might be occasionally needed for benchmarks or access to container innards. With the way this module is organized, you should be able to use this variable freely with containerized commands like python3 $OPENMM_PATH/examples/benchmarks.py --help
For more information, please check:
Home page: https://openmm.org 
Docker: https://www.amd.com/en/technologies/infinity-hub/openmm

Versions
~~~~~~~~
- 7.4.2

Commands
~~~~~~~
- python
- python3
- python3.8
- python2
- python2.7
- run-benchmarks

Module
~~~~~~~~
You can load the modules by::

    module load rocmcontainers
    module load openmm

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run openmm on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=openmm
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml rocmcontainers openmm

