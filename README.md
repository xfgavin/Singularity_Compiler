# Singularity_Compiler
A docker container to compile singularity for Debian based systems

Usage:
### To build the container
```docker build -t singularity_compiler .```
### To run the container
```docker run -v `pwd`/singularity:/opt/fmritools/singularity singularity_compiler 1.15```
1.15 means go version, by default, go 1.14.2 is used.
