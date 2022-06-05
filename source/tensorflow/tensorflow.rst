.. _backbone-label:

Tensorflow
==============================

Introduction
~~~~~~~~
TensorFlow is an end-to-end open source platform for machine learning.
For more information, please check:
Home page: https://www.tensorflow.org 
Docker: docker://rocm/tensorflow

Versions
~~~~~~~~
- 2.5-rocm4.2-dev

Commands
~~~~~~~
- python
- python3
- python3.6
- ipython
- ipython3
- bazel
- estimator_ckpt_converter
- horovodrun
- import_pb_to_tensorboard
- jupyter
- saved_model_cli
- tensorboard
- tflite_convert
- mpirun
- mpiexec
- ompi_info

Module
~~~~~~~~
You can load the modules by::

    module load rocmcontainers
    module load tensorflow

Example job
~~~~~
To run tensorflow on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=tensorflow
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml rocmcontainers tensorflow

