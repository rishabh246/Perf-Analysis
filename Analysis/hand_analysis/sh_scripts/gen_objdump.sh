#!/bin/bash

gcc -g -c -O2   ./lib/flow.c \
          ./lib/expirator.c \
          ./lib/containers/double-chain.c ./lib/containers/double-chain-impl.c \
          ./lib/containers/map-impl.c ./lib/containers/double-map.c \
          ./lib/containers/vector.c \
          ./lib/containers/map.c -I. 
objdump -d  *.o > stateful_objdump.txt

rm *.o
