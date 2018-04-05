inp_file="$1"
op_file="$2"
start_fn="<$3>"
end_fn="<$4>"

python ./py_scripts/print_portions.py $1 $2 $3 $4
python ./py_scripts/count_loads.py $2
