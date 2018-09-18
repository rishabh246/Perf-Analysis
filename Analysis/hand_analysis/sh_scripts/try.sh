#!/bin/bash

arg=$1

if [ "$arg" != "verify-dpdk" ] && [ "$arg" != "verify-hardware" ]; then
	echo "Unknown parameter"
else 
	echo "Works" 
fi
