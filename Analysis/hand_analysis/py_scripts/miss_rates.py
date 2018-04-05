import sys

file1 = sys.argv[1] 
file2 = sys.argv[2]

with open(file1) as f1, open(file2) as f2:
	for line1, line2 in zip(f1,f2): 
		line1_value = int(line1)
		line2_value = int(line2)
		miss_rate = (100*line1_value)/line2_value 
 		print("%d"%(miss_rate))

