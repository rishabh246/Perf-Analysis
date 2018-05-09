import os
import sys

rootdir = sys.argv[1]

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        output_file =  os.path.join(subdir, file)+".out"
	with open(output_file,'w') as output:
	 output.write("Works")
