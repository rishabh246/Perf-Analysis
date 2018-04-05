ip_file="$1"
asm_file="$2"
start_fn="<$3>"
end_fn="<$4>"

python ./py_scripts/print_portions.py $1 $2 $3 $4
python ./py_scripts/objdump_to_cfg.py $2 $3 >indirect.txt
dot -Tsvg -o $3.svg Output.txt 

