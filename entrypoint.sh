#!/usr/bin/env bash
#Get go
VERSION=$1
[ ${#VERSION} -eq 0 ]  && VERSION=1.14.2
OS=linux
ARCH=amd64
    wget https://dl.google.com/go/go$VERSION.$OS-$ARCH.tar.gz && \
    tar -C /opt/fmritools -xzf go$VERSION.$OS-$ARCH.tar.gz && \
    rm go$VERSION.$OS-$ARCH.tar.gz
mv /opt/fmritools/go /opt/fmritools/golang
export GOPATH=${HOME}/go
export PATH=/opt/fmritools/golang/bin:${PATH}:${GOPATH}/bin
cd /tmp
git clone https://github.com/hpcng/singularity.git
cd singularity
./mconfig --prefix=/opt/fmritools/singularity
make -C ./builddir
make -C ./builddir install
echo "Compiled using go $VERSION"
exit
