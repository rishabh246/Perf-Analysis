#!/usr/bin/env python
#vim: set ts=2 sts=2 sw=2 et si tw=80:
import re
import sys
import subprocess
import string

dump_file = sys.argv[1]

#Regular Expression to map function names in the disassembled code 
symbol_re = re.compile("^([a-fA-F0-9]+) <([\.\w]+)>:\s*$")

def main():
  with open(dump_file) as f:
    for line in f:
      m=symbol_re.match(line)
      if(m):
	print(m.group(2))
main()
