#!/bin/bash

#function_list.sh
#Rishabh Iyer

TARGET_DIR="./Objdump_files"

gcc -O2 -g -c ./lib/flow.c  ./vignat/flowtable.c \
          ./lib/expirator.c \
          ./lib/containers/double-chain.c ./lib/containers/double-chain-impl.c \
          ./lib/containers/map-impl.c ./lib/containers/double-map.c \
          ./lib/containers/vector.c \
          ./lib/containers/map.c -I .

objdump -d *.o > stateful_objdump.txt 

mv stateful_objdump.txt ./Objdump_files
mv *.o ./Objdump_files

