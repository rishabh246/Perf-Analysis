import sys
import re
import string
import os

trace_path = sys.argv[1]
num_insns = sys.argv[2]


def main():
 with open(num_insns,"w") as output:
  for root, dirs, files in os.walk(trace_path):
   for file in files:
    with open(file) as f:
     if file.endswith(".demarcated"):
      trace_lines = (line.rstrip() for line in f)
      trace_lines = list(line for line in trace_lines if line)
      ctr = 0
      for text in trace_lines:
       if(not(text.startswith("Call"))):
        ctr = ctr + 1
     
      output.write(str(ctr) + "\n")

main()
