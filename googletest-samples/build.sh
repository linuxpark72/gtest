#!/bin/sh

#make clean
echo ">>>>>>>>> sample ${1} >>>>>>>>>>"
rm -f CMakeCache.txt
rm -f cmake_install.cmake
rm -rf CMakeFiles
rm -f Makefile
rm -f bluetooth_gtest.info
rm -rf test_coverage
rm -f CMakeLists.txt
rm -f unittest_bluetooth

exit
cp -f CMakeLists-${1}.txt CMakeLists.txt

cmake CMakeLists.txt

make

./unittest_bluetooth

lcov -d . -c -o bluetooth_gtest.info

lcov --rc lcov_branch_coverage=1 \
     --remove bluetooth_gtest.info \
	 '/usr/include/*' \
	 -o bluetooth_gtest.info


genhtml  --branch-coverage  \
         -t "bluetooth test coverage" \
         --num-spaces 4 bluetooth_gtest.info \
         --output-directory ./test_coverage

