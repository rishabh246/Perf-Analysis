#!/bin/bash

gcc -O2 -g -c   ./lib/expirator_test.c -I. 
gcc -O2 -g -c  ./lib/flow.c -I. 
gcc -O2 -g -c   ./lib/containers/map.c -I.
gcc -O2 -g -c    ./lib/containers/map-impl.c -I .
#gcc -O2 -g -c  -rdynamic -DENABLE_LOG -Wfatal-errors -Ddump_perf_vars  ./lib/containers/map-impl.c -I .
gcc -O2 -g -c   ./lib/containers/double-map.c -I.
gcc -O2 -g -c   ./lib/containers/double-chain-impl.c -I.
gcc -O2 -g -c   ./lib/containers/double-chain.c -I.
gcc -O2 -g -c   ./lib/containers/vector.c -I.
gcc -O2 -g -c   ./lib/expirator.c -I.
gcc -O2 -g -c   ./vignat/flowmanager.c -I.
gcc -O2 -g -c   ./vignat/flowtable.c -I.

gcc -g expirator_test.o flow.o map.o map-impl.o double-map.o double-chain-impl.o double-chain.o vector.o expirator.o flowmanager.o flowtable.o /home/rishabh/Perf-Analysis/Analysis/hand_analysis/papi-5.5.1/src/libpapi.a -o expirator_test

#objdump -d  -S flow.o > flow.asm
rm *.o

./expirator_test
