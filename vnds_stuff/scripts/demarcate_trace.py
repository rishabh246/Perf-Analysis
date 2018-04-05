import sys
import re
import string 

trace_file = sys.argv[1]
stateful_file = sys.argv[2]
output_file = sys.argv[3]

stateful_fns = {}
i=1

symbol_re = re.compile('_dl*')

with open(stateful_file,"r") as stateful:
 stateful_fns = (line.rstrip() for line in stateful) 
 stateful_fns = list(line for line in stateful_fns if line)

with open(trace_file,"r") as trace:
 trace_lines = (line.rstrip() for line in trace)
 trace_lines = list(line for line in trace_lines if line)

packet_code = 0

with open(output_file,"w") as output:

 for text in trace_lines:
  words = text.split()
  m=symbol_re.match(text)
  if(packet_code == 0 and len(words) >2):
   if(words[2] == "lcore_main"):
    packet_code = 1
  if(len(words)>2):
   #m=symbol_re.match(words[2])
   m=0
  else:
   m=0
  if(not m and len(words) >2 and packet_code == 1):
    output.write(text)
    output.write("\n")
 # m=symbol_re.match(text)
 # stateful = 0
 # if not m:
 #  words = text.split()
 #  fn_name = words[2]
 #  fn_name = fn_name[1:len(words[2])-2]
 #  index = fn_name.find('+')
 #  if index == -1 :
 #   index = len(fn_name)
 #  fn_name=fn_name[0:index]
 #  if fn_name in stateful_fns:
 #   stateful = 1
 # if(stateful):
 #  output.write("Call to libvig")
 # else:
 #  output.write(text)
 # output.write("\n")

  
 
 
