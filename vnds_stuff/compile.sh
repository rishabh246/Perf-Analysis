#!/bin/bash

gcc -O2 -g -c  ./lib/containers/double-chain_test.c -I. 
gcc -O2 -g -c ./lib/flow.c -I. 
gcc -O2 -g -c  ./lib/containers/double-chain.c -I.
gcc -O2 -g -c  ./lib/containers/double-chain-impl.c -I .
gcc -g double-chain_test.o flow.o double-chain.o double-chain-impl.o -o double_chain_test
