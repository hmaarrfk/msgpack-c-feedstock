
#!/usr/bin/env bash

mkdir build
cd build

cmake \
    -GNinja \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DMSGPACK_CXX11=YES \
    ..

ninja install
ctest
