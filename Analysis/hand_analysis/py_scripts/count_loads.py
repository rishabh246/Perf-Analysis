import sys

inp_file = sys.argv[1]

a = 0
b = 0 
with open(inp_file,"r") as f:
    text = f.readlines()
for line in text:
    if "(%" in line or "(,%" in line:
       #	print line 
	if not ("lea" or "call" or "nop") in line:
		a =a +1
    elif "push" in line or "pop" in line :
        b = b+1 
 #       print line
    if  "call" in line :
        print line
        #print a
        #print b

print("Memory accesses = %s"%(a))
print("Stack Operations = %s"%(b))   
