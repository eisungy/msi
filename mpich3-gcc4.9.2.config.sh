PETSC_DIR=/lore/esyoon/openlib/petsc-3.7.5-mpich3-gcc-4.9.2
PETSC_ARCH=
ZOLTAN_DIR=/lore/seol/mpich3-gcc4.9.2-install
PARMETIS_DIR=$PETSC_DIR/$PETSC_ARCH
PREFIX=/lore/seol/mpich3-gcc4.9.2-install
cmake .. \
  -DCMAKE_C_COMPILER="/usr/local/mpich3/latest/bin/mpicc" \
  -DCMAKE_CXX_COMPILER="/usr/local/mpich3/latest/bin/mpicxx" \
  -DCMAKE_Fortran_COMPILER="/usr/local/mpich3/latest/bin/mpif90" \
  -DCMAKE_C_FLAGS=" -g -O0 -DDEBUG -I$PETSC_DIR/include" \
  -DCMAKE_CXX_FLAGS=" -g -O0 -DDEBUG -I$PETSC_DIR/include" \
  -DCMAKE_Fortran_FLAGS="-fpic -ffree-line-length-0"\
  -DSCOREC_INCLUDE_DIR=$PREFIX/include \
  -DSCOREC_LIB_DIR=$PREFIX/lib \
  -DZOLTAN_LIBRARY="$PREFIX/lib/libzoltan.a" \
  -DPARMETIS_LIBRARY="$PETSC_DIR/$PETSC_ARCH/lib/libparmetis.a" \
  -DMETIS_LIBRARY="$PETSC_DIR/$PETSC_ARCH/lib/libmetis.a" \
  -DENABLE_PETSC=ON \
  -DPETSC_INCLUDE_DIR="$PETSC_DIR/$PETSC_ARCH/include" \
  -DPETSC_LIB_DIR="$PETSC_DIR/$PETSC_ARCH/lib" \
  -DHDF5_INCLUDE_DIR="$PETSC_DIR/$PETSC_ARCH/include" \
  -DHDF5_LIB_DIR="$PETSC_DIR/$PETSC_ARCH/lib" \
  -DENABLE_TRILINOS=OFF \
  -DTRILINOS_INCLUDE_DIR="/fasttmp/seol/openmpi-gcc4.4.5-install/include" \
  -DTRILINOS_LIB_DIR="/fasttmp/seol/openmpi-gcc4.4.5-install/lib" \
  -DLAPACK_LIB_DIR="$PETSC_DIR/$PETSC_ARCH/lib" \
  -DBOOST_LIB_DIR="/fasttmp/seol/openmpi-gcc4.4.5-install/lib" \
  -DSTDCPP_LIBRARY="/usr/lib/gcc/x86_64-linux-gnu/4.4.5/libstdc++.a" \
  -DNETCDF_LIBRARY="$PETSC_DIR/$PETSC_ARCH/lib/libnetcdf.a" \
  -DENABLE_COMPLEX=OFF \
  -DENABLE_TESTING=ON \
  -DCMAKE_BUILD_TYPE=Debug \
  -DCMAKE_INSTALL_PREFIX=$PREFIX

