import sys

inp_file = sys.argv[1]
op_file = sys.argv[2]
start_point = sys.argv[3]
end_point = sys.argv[4]

a = 0
b = 0
with open(inp_file,"r") as f:
    text = f.readlines()
with open(op_file, "w") as text_file:
      for line in text:
       if start_point in line and a == 0 :
          a = 1
       if a == 1 :
          text_file.write(line)
       if end_point  in line and a == 1 :
          a = 2
