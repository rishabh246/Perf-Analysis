import sys
import string
dump_file = sys.argv[1]
output_file=dump_file+".processed"
with open(dump_file,'r') as inp,open(output_file,'w') as output:
  text = inp.readlines()
  for line in text:
       fields = string.split(line.rstrip(),'\t')
       if(len(fields)>=3):
        output.write(fields[0]+"\t" + fields[2]+"\n")  
