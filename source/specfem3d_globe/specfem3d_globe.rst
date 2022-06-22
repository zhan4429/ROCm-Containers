.. _backbone-label:

Specfem3d_globe
==============================

Introduction
~~~~~~~~
SPECFEM3D Globe simulates global and regional (continental-scale) seismic wave propagation. This module conflicts with RCAC 'openmpi' modules - unload them before use (there is a built-in OpenMPI inside the container).
For more information, please check:
Home page: https://geodynamics.org/cig/software/specfem3d_globe/ 
Docker: https://www.amd.com/en/technologies/infinity-hub/specfem3d_globe

Versions
~~~~~~~~
- 20210322--h1ee10977

Commands
~~~~~~~
- xadd_model_iso
- xadd_model_tiso
- xadd_model_tiso_cg
- xadd_model_tiso_iso
- xaddition_sem
- xclip_sem
- xcombine_AVS_DX
- xcombine_paraview_strain_data
- xcombine_sem
- xcombine_surf_data
- xcombine_vol_data
- xcombine_vol_data_vtk
- xconvolve_source_timefunction
- xcreate_cross_section
- xcreate_header_file
- xcreate_movie_AVS_DX
- xcreate_movie_GMT_global
- xdetect_duplicates_stations_file
- xdifference_sem
- xextract_database
- xinterpolate_model
- xmeshfem3D
- xsmooth_laplacian_sem
- xsmooth_sem
- xspecfem3D
- xsum_kernels
- xsum_preconditioned_kernels
- xwrite_profile
- benchmark
- mpirun
- mpiexec
- ompi_info

Module
~~~~~~~~
You can load the modules by::

    module load rocmcontainers
    module load specfem3d_globe

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run specfem3d_globe on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=specfem3d_globe
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml rocmcontainers specfem3d_globe

