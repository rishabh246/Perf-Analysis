#!/usr/bin/env python
#vim: set ts=2 sts=2 sw=2 et si tw=80:
import re
import sys
import subprocess
import string
import networkx as nx
import numpy as np
import matplotlib.pyplot as plt


#Build a CFG for a function based on objdump -d output
#usage: objdump_to_cfg.py "objdump -d output" function_name

jumps = [ "ja","jnbe","jae","jnb","jnc","jb","jnae","jc","jbe","jna","jcxz","jecxz","je","jz","jg","jge","jnle","jl","jnge", "jle","jnl","jne","jnz","jng","jno","jnp","jpo","jns","jo","jp","jpe","js" ]
jumps_uncond = ["jmp","jmpq"]
calls = ["call","callq"]
rets = ["ret","retq","repz","repz ret","repz retq"]
dump_file = sys.argv[1]
root_name = sys.argv[2] #The function that will be the root of our CFG

#Regular Expression to map function names in the disassembled code 
symbol_re = re.compile("^([a-fA-F0-9]+) <([\.\w]+)>:\s*$") 

#print "#address;[target1, target2, ...]" #our output format
#print "#0 == root, -1 == indirect" #right now we only use indirects as sources

#CFG: key is source address, values are all targets
CFG={}

root=-1 #The root of our CFG

#Store the objdump in memory, list of tuples (address, asm)
#Went with this over a dict since we should be iterating more than searching
#so having it sorted by address just makes sense
objdump=[]
indirects=[]
calls_ctr=[]
blockqueue=[]
paths_visited=[]
starting_points=[]
basic_blocks=[]
basic_block_ctr = 0
ending_points=[]
G = nx.DiGraph()
#Offset to add to all addresses. this is 32bit ELF w/o ASLR
#offset=0x80000000
#offset=0x00000000

def main():
  global root
  global blockqueue
  with open(dump_file) as f:
    for line in f:
      #First find out function of interest
      m=symbol_re.match(line)
      if(m):
        if(m.group(2) == root_name):
          print(m.group(1), m.group(2))
          root=int(m.group(1),16)

      #Example tab-delimited output from objdump:
      #ADDRESS    INSTRUCTION           ASCII
      #c1000000:  8b 0d 80 16 5d 01     mov    0x15d1680,%ecx
      fields = string.split(line.rstrip(),'\t')
      
      #Instructions have 3  fields, but their actual function names have only 1
      if(len(fields)<3):
        continue
      #objdump -d is a linear disassembler, so we every we get will already be
      #sorted by address.

      #Our in-memory representation of objdump output is an list of tuples of 
      #the form (address, instruction)
      #Note that we store the address in int form for searching
      objdump.append((int(fields[0].replace(":",""),16), fields[2]))

  if(root==-1):
    print "Could not find root function for CFG: %s" % root_name
#  print root 
  #process BBs until we get a return to 0, used to be recursive, but python
  #doesn't do tail recursion so this should be better?
  blockqueue.append(root) #queue is technically a stack, but whatever
  while(len(blockqueue)>0):
    block=blockqueue.pop()
    iterate_bb(block)

#  print_starting_points()
  print_basic_blocks()
#  print_ending_points()	
  generate_CFG() 
  print_CFG()
 # print_illustration()
  print_textfile()
  print("Calls: %d"%len(calls_ctr))
  print("%s"%array_to_hex(calls_ctr))
  print("Indirect calls/jumps: %d"%len(indirects))
  print("%s"%array_to_hex(indirects))

####END MAIN BEGIN FUNCTION DEFS#####
def array_to_hex(array):
  return string.join('0x%x' % i for i in array)

def print_CFG():
  for x in range(0,basic_block_ctr):
     print(x)
  for x in range(0,basic_block_ctr):
    for y in range(0,basic_block_ctr):
      if(CFG[x,y] == 1):
	print("Node %d can jump to Node %d" %(x,y))

def print_textfile():
  with open("Output.txt", "w") as text_file:
      text_file.write("digraph G { \n")
      for x in range(0,basic_block_ctr):
   	text_file.write("Node%d [ tooltip = \"%s to %s\" ]\n"%(x,hex(basic_blocks[x][1]),hex(basic_blocks[x][2])))
        for y in range(0,basic_block_ctr):
          if(CFG[x,y] == 1):
             text_file.write("Node%d -> Node%d\n"%(x,y))
  
      text_file.write("}\n")

def print_illustration():
   G.add_nodes_from([0,basic_block_ctr -1])
   nx.draw(G)
   plt.show()

def print_starting_points():
  a = 0 
  for x in starting_points:
	print x 
        a = a+1 
  print("Number of basic blocks =%s",a)
 
def print_basic_blocks():
  for x in basic_blocks:
        print (x[0],hex(x[1]),hex(x[2]))

def print_ending_points():
  for x in ending_points:
        print x
def initialise_CFG():
  for x in range(0,basic_block_ctr):
    for y in range(0,basic_block_ctr):
      CFG[x,y] = 0
		
def get_objdump_index(address):
  #Takes in an address and finds the index in the objdump array. The objdump array is sorted
  #Binary search in our array to find our target
  item = 0
  first = 0
  last = len(objdump)-1
  while first<=last:
    mid = (first+last)/2
    item = objdump[mid][0]
    if(item==address):
      return mid
    else:
      if(address < item):
        last = mid-1
      else:
        first = mid+1
  print("Couldn't find address:%s"%(address)) 

def print_instr(instr):
  #Useful for debugging
  print("0x%x: %s"%(objdump[instr][0],objdump[instr][1]))

def count_indirect(source_addr):
  global indirects
  indirects.append(source_addr)

def count_calls(source_addr):
  global calls_ctr
  calls_ctr.append(source_addr)

def iterate_bb(block_addr):
  global blockqueue
  global CFG
  global paths_visited
  global starting_points
  global basic_blocks
  global basic_block_ctr
  global ending_points
  if( block_addr==-1):
    #Stop conditions: we return to root or an indirect (somehow)
    return

  if(block_addr in starting_points):
    #Loop detection
    return
  starting_points.append(block_addr)

  #Now, step through until we hit a jump, call, or ret
  for i in range(get_objdump_index(block_addr),len(objdump)):
    target_hex=0
    split = string.split(objdump[i][1])
    instr=split[0]
    #Got the opcode out 
    #print(instr)
    if(len(split)>=2):
      target = split[1]
      try:
        target_hex = int(target,16)	
      except:
        #already an int or an indirect (which won't be used)
        target_hex = target

    
    #Look for conditional jumps
    if(instr in jumps):
    #  print(hex(block_addr),target_hex)
      if '*' in target:
        #Indirect jump, beyond scope of code
        count_indirect(objdump[i][0])
	#Add Basic Block
	#basic_blocks.append((basic_block_ctr,block_addr,objdump[i][0]))
	#basic_block_ctr = basic_block_ctr + 1
	#ending_points.append(objdump[i][0])
        return
      else:
        #Handle jump not taken
        blockqueue.append(objdump[i+1][0])
        #Handle jump taken
        blockqueue.append(target_hex)
	#Add Basic Block
        basic_blocks.append((basic_block_ctr,block_addr,objdump[i][0]))
        basic_block_ctr = basic_block_ctr + 1
	ending_points.append(objdump[i][0])
        return

    #Look for unconditional jumps
    if(instr in jumps_uncond):
    #  print(hex(block_addr),target_hex)
      blockqueue.append( target_hex )
      #Add Basic Block
      basic_blocks.append((basic_block_ctr,block_addr,objdump[i][0]))
      basic_block_ctr = basic_block_ctr + 1
      ending_points.append(objdump[i][0])	
      return

    if(instr in rets):
      #Add Basic Block
   #   print(hex(block_addr),"return")
      basic_blocks.append((basic_block_ctr,block_addr,objdump[i][0]))
      basic_block_ctr = basic_block_ctr + 1
      ending_points.append(objdump[i][0])	
      return	 

    if(instr in calls):
      count_calls(objdump[i][0])
      if '*' in target:
        #Indirect jump, beyond scope of code
        count_indirect(objdump[i][0])


def generate_CFG():
    global CFG
    global starting_points
    global ending_points
    i = -1
    initialise_CFG()
    for x in ending_points:
          i=i+1 #Many BB's can end at the same address, cannot use ending_points.index(x)
          target_hex=0
          split = string.split(objdump[get_objdump_index(x)][1])
          instr=split[0]
          if(len(split)>=2):
            target = split[1]
            try:
              target_hex = int(target,16)
            except:
              #already an int or an indirect (which won't be used)
              target_hex = target

	  if(instr in jumps):
            if '*' in target:
	      continue
            else:
              #Handle jump not taken
              CFG[i,(starting_points.index(objdump[get_objdump_index(x)+1][0]))] = 1
              #Handle jump taken
              CFG[i,(starting_points.index(target_hex))] = 1
              continue

           #Look for unconditional jumps
          if(instr in jumps_uncond):
              CFG[i,(starting_points.index(target_hex))] = 1
              continue

          if(instr in rets):
              continue
           
main()


