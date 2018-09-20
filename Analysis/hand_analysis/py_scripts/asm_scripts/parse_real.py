import sys
import re
import string
import os

inp_file = sys.argv[1]
fn_ic={}
fn_ma={}
def main():
   with open(inp_file) as f:
     trace_lines = (line.rstrip() for line in f)
     trace_lines = list(line for line in trace_lines if line)
     ic=0
     ma=0
     for text in trace_lines:
                index1 = find_nth(text,"|",1)
                index2 = find_nth(text,"|",2)
                index3 = find_nth(text,"|",3)
                fn = text[index1+1:index2-1]
                addr = text[index3+1:]

                if(fn not in fn_ic):
                    fn_ic[fn] = 0
                    fn_ma[fn] = 0
                fn_ic[fn]=fn_ic[fn]+1
		ic=ic+1
                if (addr != ""):
                        fn_ma[fn]=fn_ma[fn]+1
			ma=ma+1

     print("Instruction counts\n\n")
     for k, v in fn_ic.items():
       print (k, '-->', v)
     print("\n\nMemory accesses\n\n")
     for k, v in fn_ma.items():
       print (k, '-->', v)
     print(ic)
     print(ma)


def find_nth(haystack, needle, n):
 start = haystack.find(needle)
 while start >= 0 and n > 1:
  start = haystack.find(needle, start+len(needle))
  n -= 1
 return start

main()
