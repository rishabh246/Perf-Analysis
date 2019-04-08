#!/usr/bin/env python
#vim: set ts=2 sts=2 sw=2 et si tw=80:

import re
import sys
import subprocess
import string
import os

bb_path=sys.argv[1]
objdump_file=sys.argv[2]


fn_names=[
              "dchain_impl_allocate_new_index", "dchain_impl_free_index" ,"dchain_impl_get_oldest_index", "dchain_impl_init", "dchain_impl_rejuvenate_index",
              "dchain_allocate" ,"dchain_allocate_new_index", "dchain_rejuvenate_index", "dchain_expire_one_index",
              "map_impl_init", "map_impl_get" ,"map_impl_put" ,"map_impl_erase",
              "map_allocate" ,"map_get" ,"map_put", "map_erase",
              "dmap_allocate" ,"dmap_get_a", "dmap_get_b", "dmap_put", "dmap_erase",
              "expire_items" ,"expire_items_single_map",
              "vector_allocate" ,"vector_borrow_full", "vector_borrow_half", "vector_return_full", "vector_return_half",
             "int_key_eq", "ext_key_eq", "int_key_hash","ext_key_hash", "flow_extract_keys", "flow_pack_keys", "flow_cpy","flow_destroy", 
	     "handle_packet_timestamp",
	     "lpm_lookup"
	     "lb_find_preferred_available_backend"
          ]
fn_name=""
bb_file=""
start_point=""
end_point=""

def main():
  global bb_file
  global fn_name
  global start_point
  global end_point

  # Initialising file since we will only append from here on
  output_file =  open("Output.txt",'w')
  output_file.close()
  
  for i in range(3,len(sys.argv)):
    if sys.argv[i] in fn_names:
      fn_name=sys.argv[i]
      bb_file=bb_path+"/"+fn_name+"_bb.txt"
      with open(bb_file,'r') as input_file:
        bb_lines = (line.rstrip() for line in input_file)
        bb_lines = list(line for line in bb_lines if line)
      continue
    else:
      for text in bb_lines:
        words=text.split()
        if(words[0]==sys.argv[i]):
          start_point=words[1][2:]+":"
          end_point=words[2][2:]+":"
          print_portions()

  calculate_perf()
     
def print_portions():
  global op_file
  global objdump_file
  a = 0
  b = 0
  with open(objdump_file,"r") as f,open("Output.txt","a") as output_file:
    text = f.readlines()
    for line in text:
       fields = string.split(line.rstrip(),'\t')
       if start_point in line and a == 0 :
          a = 1
       if a == 1 and len(fields)>=3 :
          output_file.write(fields[0]+"\t" + fields[2]+"\n")
       if end_point  in line and a == 1 :
          a = 2

def calculate_perf():
  mem_insns = 0
  compute_insns = 0
  compute_insns_cost = 0
  compute_insns_perf = {
                        'add':1,
                        'addl':1,
                        'and':1,
                        'callq':1,
                        'cltd':1,
                        'cltq':4,
                        'cmp':1,
                        'cmpl':1,
                        'imul':4,
                        'idiv':90,
                        'jb':1,
                        'je':1,
                        'jg':1,
                        'jl':1,
                        'jle':1,
                        'jmp':1,
                        'jmpq':1,
                        'jne':1,
			'jae':1,
                        'jbe':1,
                        'jge':1,
                        'lea':3,
                         'mov':1,
                        'movabs':1,
                        'movl':1,
                        'movq':1,
                        'movslq':1,
                        'movzbl':1,
                       'movzwl':1,
                        'nop':0,
                        'nopl':0,
                        'nopw':0,
                         'repz':1,
                        'retq':1,
                        'sar':1,
                        'shr':1,
                        'shl':1,
                         'sbb':2,
                         'sete':1,
                        'shl':4,
                       'sub':1,
                         'subl':1,
                       'test':1,
                       'xchg':0,
                         'xor':1
                       }
  with open("Output.txt","r") as f:
    trace_lines = (line.rstrip() for line in f)
    trace_lines = list(line for line in trace_lines if line)
  for line in trace_lines:
    if ("(%" in line or "(,%"in line or "ret" in line  or "call" in line ) and (not ("lea" or "nop") in line):
        mem_insns =mem_insns +1
    elif "push" in line or "pop" in line :
        mem_insns = mem_insns+1
    else:
        words=string.split(line,'\t')
        if(len(words)<2):
         print line
	 continue
        opcode=str(words[1]).split()
        compute_insns_cost += compute_insns_perf[opcode[0]]
        compute_insns = compute_insns +1
    if  "call" in line:
        print line

  print("Memory Accesses = %s"%(mem_insns))
  print("Compute Instructions = %s"%(compute_insns))
  print("Compute Instructions Perf = %s"%(compute_insns_cost))
  print("Total Instructions = %s" %(compute_insns+mem_insns))

main()
