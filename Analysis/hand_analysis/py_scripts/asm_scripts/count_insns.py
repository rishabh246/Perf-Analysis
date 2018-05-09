import sys
import string

inp_file = "Output.txt"

mem_insns = 0
stack_insns = 0
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
                        'idiv':1,
                        'jb':1,
                        'je':1,
                        'jg':1,
                        'jl':1,
                        'jle':1,
                        'jmp':1,
                        'jmpq':1,
                        'jne':1,
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
                         'sbb':2,
                         'sete':1,
                        'shl':4,
                       'sub':1,
                         'subl':1,
                       'test':1,
                       'xchg':0,
                         'xor':1
	               }
with open(inp_file,"r") as f:
    trace_lines = (line.rstrip() for line in f)
    trace_lines = list(line for line in trace_lines if line) 
for line in trace_lines:
    if ("(%" in line or "(,%"in line ) and not ("lea" or "call" or "nop") in line:
     	mem_insns =mem_insns +1
	print line
    elif "push" in line or "pop" in line :
        stack_insns = stack_insns+1
    else:
        words=string.split(line,'\t')
        if(len(words)<3):
         continue
        opcode=str(words[2]).split()
        compute_insns_cost += compute_insns_perf[opcode[0]]
	compute_insns = compute_insns +1 
    if  "call" in line:
        print line

print("Memory Accesses = %s"%(mem_insns))
print("Stack Operations = %s"%(stack_insns))  
print("Compute Instructions = %s"%(compute_insns))
print("Compute Instructions Perf = %s"%(compute_insns_cost)) 
