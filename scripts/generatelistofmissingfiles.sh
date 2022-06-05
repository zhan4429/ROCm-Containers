#! /bin/bash

# This script generates a list of rocm containers that are not in the git directory
# The output file is listofmissingfiles.txt and is used in generatedocumentation.sh
# Example usage: ./generatedocumentation.sh

rocmcontainers="/opt/spack/modulefiles/rocmcontainers/"
gitfolders="../source/"

diff -q $gitfolders $rocmcontainers | grep "Only in" > tempfile.txt

awk 'NF{ print $NF }' tempfile.txt > listofmissingfiles.txt

rm tempfile.txt