import sys
import re
import string 
import os

trace_path = sys.argv[1]
stateful_file = sys.argv[2]

stateful_fns = {}

symbol_re = re.compile('_dl*')

def main():
 with open(stateful_file,"r") as stateful:
  stateful_fns = (line.rstrip() for line in stateful) 
  stateful_fns = list(line for line in stateful_fns if line)

 for root, dirs, files in os.walk(trace_path):
  for file in files:
   with open(file) as f:
    if file.endswith(".packet_relevant_instructions"):
     trace_lines = (line.rstrip() for line in f)
     trace_lines = list(line for line in trace_lines if line)
     dump_file=file.replace('.packet_relevant_instructions','.packet.demarcated')
     with open(dump_file,"w") as output:
      for text in trace_lines:
       index1 = find_nth(text,"|",1)
       index2 = find_nth(text,"|",2)
       fn_call_stack = text[index1+1:index2-1]
       words = fn_call_stack.split()
       stateful = 0
       for fn_name in words:
        if(fn_name in stateful_fns):
	 stateful = 1
         break
       if(stateful):
        output.write("Call to libVig - " + fn_name + "\n")
       else:
        output.write(text)
        output.write("\n") 

  
def find_nth(haystack, needle, n):
 start = haystack.find(needle)
 while start >= 0 and n > 1:
  start = haystack.find(needle, start+len(needle))
  n -= 1
 return start

main()
