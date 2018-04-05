import re
import sys
import subprocess
import string

symbol_re = re.compile("^([a-fA-F0-9]+) <([\w]+)>:\s*$")

a = sys.argv[1]
b = sys.argv[2]
'''
jumps = { #define jumps, synomyms on same line
'ja':'if above', 'jnbe':'if not below or equal',
'jae':'if above or equal','jnb':'if not below','jnc':'if not carry',
'jb':'if below', 'jnae':'if not above or equal', 'jc':'if carry',
'jbe':'if below or equal', 'jna':'if not above',
'jcxz':'if cx register is 0', 'jecxz':'if cx register is 0',
'je':'if equal', 'jz':'if zero',
'jg':'if greater', 'jnle':'if not less or equal',
'jge':'if greater or equal',
'jl':'if less', 'jnge':'if not greater or equal',
'jle':'if less or equal', 'jnl':'if not less',
'jne':'if not equal', 'jnz':'if not zero',
'jng':'if not greater',
'jno':'if not overflow',
'jnp':'if not parity', 'jpo':'if parity odd',
'jns':'if not sign',
'jo':'if overflow',
'jp':'if parity', 'jpe':'if parity even',
'js':'if sign'}

jumps_uncond = { 
'jmp':'unconditional',
'jmpq': 'unconditional qword'}


calls = {'call': 'call', 'callq':'call qword'} 
rets = {'ret':'return', 'retq':'return qword'}
'''

ctr = 0
list_of_cond_jumps = [ "ja","jnbe","jae","jnb","jnc","jb","jnae","jc","jbe","jna","jcxz","jecxz","je","jz","jg","jge","jnle","jl","jnge",
	  "jle","jnl","jne","jnz","jng","jno","jnp","jpo","jns","jo","jp","jpe","js" ]
list_of_uncond_jumps = ["jmp","jmpq"]
list_of_calls = ["call","callq"]
list_of_returns = ["ret","retq"]

with open(a) as f:
	for line in f:
		m = symbol_re.match(line)
	        fields = string.split(line.rstrip(),'\t')
                if(len(fields)>2):
			split = string.split(fields[2])
			#if(len(split)>=2)
			print(split[0], split[1])
	#	if(m):
		#	print line 
		#	print m.group(0)
		#	print m.group(1)
		#	print(m.group(2),m.group(1))
               #        print(int(m.group(1),16)
	       #fields = string.split(line.rstrip(),'\t')
	       #print(fields[0])
		#	for x in range(0,len(fields))
		#		print fields[x]
	#	else: 
		#	 fields = string.split(line.rstrip(),'\t')
                #         print(fields[0])
	

#for x in list_of_cond_jumps:
#		print x 
#print a
#print b
#print ctr
