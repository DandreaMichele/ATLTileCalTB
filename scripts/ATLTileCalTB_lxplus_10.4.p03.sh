#!/bin/sh

export G4GCC_VERSION="6.3"
export G4GCC_PLATFORM="x86_64-centos7-gcc63-opt"
export GEANT4_VERSION="10.4.p03"
export GEANT4_PLATFORM="x86_64-centos7-gcc63-opt-MT"
export GCC_VERSION="10"
export GCC_PLATFORM="x86_64-centos7-gcc10-opt"

source ./ATLTileCalTB_cvmfs_setup.sh

export CC=$(command -v gcc)
export CXX=$(command -v g++)
cmake3 ../ATLTileCalTB $@
make -j$(nproc)
