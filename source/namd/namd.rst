.. _backbone-label:

Namd
==============================

Introduction
~~~~~~~~
NAMD is a parallel molecular dynamics code designed for high-performance simulation of large biomolecular systems. NAMD uses the popular molecular graphics program VMD for simulation setup and trajectory analysis, but is also file-compatible with AMBER, CHARMM, and X-PLOR.
For more information, please check:
Home page: http://www.ks.uiuc.edu/Research/namd/ 
Docker: https://www.amd.com/en/technologies/infinity-hub/namd

Versions
~~~~~~~~
- 2.15a2

Commands
~~~~~~~
- charmrun
- flipbinpdb
- flipdcd
- namd2
- psfgen
- sortreplicas

Module
~~~~~~~~
You can load the modules by::

    module load rocmcontainers
    module load namd

Example job
~~~~~
To run namd on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=namd
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml rocmcontainers namd

