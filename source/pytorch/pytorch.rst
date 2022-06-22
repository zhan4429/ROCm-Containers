.. _backbone-label:

Pytorch
==============================

Introduction
~~~~~~~~
PyTorch is an optimized tensor library for deep learning using GPUs and CPUs.
For more information, please check:
Home page: https://pytorch.org/ 
Docker: docker://rocm/pytorch

Versions
~~~~~~~~
- 1.8.1-rocm4.2-ubuntu18.04-py3.6
- 1.9.0-rocm4.2-ubuntu18.04-py3.6

Commands
~~~~~~~
- python
- python3
- python3.6
- convert-caffe2-to-onnx
- convert-onnx-to-caffe2
- mpirun
- mpiexec
- ompi_info

Module
~~~~~~~~
You can load the modules by::

    module load rocmcontainers
    module load pytorch

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run pytorch on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=pytorch
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml rocmcontainers pytorch

