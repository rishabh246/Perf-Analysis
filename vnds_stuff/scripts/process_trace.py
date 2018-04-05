#!/usr/bin/env python

import re
import sys
import subprocess
import string
import os

trace_path = sys.argv[1]

def main():
 i=1
 for root, dirs, files in os.walk(trace_path):
  for file in files:
   with open(file) as f:
    trace_lines = (line.rstrip() for line in f)
    trace_lines = list(line for line in trace_lines if line)
    dump_file=file.replace('.trace','.trace.processed')
    packet_code = 0
    print(i)
    i=i+1
    with open(dump_file,"w") as output:
     for text in trace_lines:
      words = text.split()
      if(packet_code == 0 and len(words) >2):
       if(words[2] == "lcore_main"):
        packet_code = 1
      if(len(words) >2 and packet_code == 1):
       output.write(text)
       output.write("\n")

main()
