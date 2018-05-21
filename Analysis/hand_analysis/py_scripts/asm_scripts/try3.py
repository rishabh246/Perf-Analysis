import sys
import string

inp_file = sys.argv[1]
output_file="Output.txt"

with open(inp_file,"r") as f:
    trace_lines = (line.rstrip() for line in f)
    trace_lines = list(line for line in trace_lines if line)

with open(output_file,'w') as op:
  for line in trace_lines:
      fields = string.split(line.rstrip(),'\t')
      if(len(fields)>=3):
		op.write(fields[0]+"\t"+fields[2]+"\n") 
