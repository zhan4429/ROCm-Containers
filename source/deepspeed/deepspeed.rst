.. _backbone-label:

Deepspeed
==============================

Introduction
~~~~~~~~
DeepSpeed is a deep learning optimization library that makes distributed training easy, efficient, and effective. DeepSpeed delivers extreme-scale model training for everyone, from data scientists training on massive supercomputers to those training on low-end clusters or even on a single GPU.
For more information, please check:
Home page: https://www.deepspeed.ai 
Docker: docker://rocm/deepspeed

Versions
~~~~~~~~
- rocm4.2_ubuntu18.04_py3.6_pytorch_1.8.1

Commands
~~~~~~~
- deepspeed
- python
- python3
- python3.6
- ipython
- ipython3
- convert-caffe2-to-onnx
- convert-onnx-to-caffe2
- estimator_ckpt_converter
- import_pb_to_tensorboard
- tensorboard
- tflite_convert
- mpirun
- mpiexec
- ompi_info

Module
~~~~~~~~
You can load the modules by::

    module load rocmcontainers
    module load deepspeed

Example job
~~~~~
To run deepspeed on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=deepspeed
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml rocmcontainers deepspeed

