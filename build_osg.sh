#!/bin/sh
source /opt/rh/devtoolset-3/enable
cd `dirname $0`
pwd
hostname
if [ "x${BUILDROOT}" == "x" ]
then
  export BUILDROOT="`pwd`"
fi
patch -p1 -N -i ./osg.diff
mkdir -p build
mkdir -p local
cd build
make clean 
cmake3 -D CMAKE_INSTALL_PREFIX=$BUILDROOT/local -DBUILD_OSG_EXAMPLES=ON -D CMAKE_BUILD_TYPE=RelWithDebInfo -D CMAKE_RELWITHDEBINFO_POSTFIX="" ..
make install