.. _backbone-label:

Specfem3d
==============================

Introduction
~~~~~~~~
SPECFEM3D Cartesian simulates acoustic (fluid), elastic (solid), coupled acoustic/elastic, poroelastic or seismic wave propagation in any type of conforming mesh of hexahedra (structured or not.) It can, for instance, model seismic waves propagating in sedimentary basins or any other regional geological model following earthquakes. It can also be used for non-destructive testing or for ocean acoustics. This module conflicts with RCAC 'openmpi' modules - unload them before use (there is a built-in OpenMPI inside the container).
For more information, please check:
Home page: https://geodynamics.org/cig/software/specfem3d/ 
Docker: https://www.amd.com/en/technologies/infinity-hub/specfem3d

Versions
~~~~~~~~
- 20201122--h9c0626d1

Commands
~~~~~~~
- xadd_model_iso
- xcheck_mesh_quality
- xclip_sem
- xcombine_sem
- xcombine_surf_data
- xcombine_vol_data
- xcombine_vol_data_vtk
- xconvert_skewness_to_angle
- xconvolve_source_timefunction
- xcreate_movie_shakemap_AVS_DX_GMT
- xdecompose_mesh
- xdecompose_mesh_mpi
- xdetect_duplicates_stations_file
- xgenerate_databases
- xinverse_problem_for_model
- xmeshfem3D
- xmodel_update
- xsmooth_sem
- xspecfem3D
- xsum_kernels
- xsum_preconditioned_kernels
- benchmark
- mpirun
- mpiexec
- ompi_info

Module
~~~~~~~~
You can load the modules by::

    module load rocmcontainers
    module load specfem3d

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run specfem3d on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=specfem3d
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml rocmcontainers specfem3d

