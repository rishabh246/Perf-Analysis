#!/bin/bash
declare -a fn_names=(
		"lpm_init" "lpm_lookup"	"lpm_try"
	)
for fn_name in "${fn_names[@]}"
do
	python ../py_scripts/asm_scripts/objdump_to_cfg.py stateful_objdump.txt $fn_name > $fn_name.txt
	dot -Tsvg $fn_name.graph -o $fn_name.svg		
done

rm *.graph

