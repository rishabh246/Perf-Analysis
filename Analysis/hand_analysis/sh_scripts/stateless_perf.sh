#!/bin/bash

py_scripts_dir=$1
traces_dr=$2
output=$3

cd $2
python $1/process_trace.py ./
python $1/process_trace.py ./
python $1/demarcate_trace.py ./ $1/fn_lists/stateful_fns.txt $1/fn_lists/dpdk_fns.txt $1/fn_lists/time_fns.txt $1/fn_lists/verif_fns.txt 
python $1/print_addresses.py ./
python $1/formal_cache.py ./
python $1/stateless_stats.py ./ num_insns num_accesses num_hits num_misses trace_nos
python $1/stateless_perf.py  num_insns num_accesses num_hits trace_nos $3

