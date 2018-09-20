#!/usr/bin/env python

import re
import sys
import subprocess
import string
import os

csv_file = sys.argv[1]
prev_line = 0

with open(csv_file,'r') as f:
        trace_lines = (line.rstrip() for line in f)
        trace_lines = list(line for line in trace_lines if line)
        for line in trace_lines:
                line1=int(line)
                print (line1-prev_line)
                prev_line=line1
