#!/bin/bash

declare -a fn_names=(
              "dchain_get_free_index" "dchain_allocate" "dchain_allocate_new_index" "dchain_rejuvenate_index" "dchain_expire_one_index"
	      "map_impl_init" "map_impl_get" "map_impl_put" "map_impl_erase"
              "map_allocate" "map_get" "map_put" "map_erase"
              "dmap_allocate" "dmap_get_a" "dmap_get_b" "dmap_put" "dmap_erase"
              "expire_items" "expire_items_single_map"
              "vector_allocate" "vector_borrow_full" "vector_borrow_half" "vector_return_full" "vector_return_half"
	      "int_key_eq" "ext_key_eq" "int_key_hash" "ext_key_hash" "flow_extract_keys" "flow_pack_keys" "flow_cpy" "flow_destroy"
		)
for fn_name in "${fn_names[@]}"
do
	python ../py_scripts/asm_scripts/objdump_to_cfg.py stateful_objdump.txt $fn_name > $fn_name.txt
	dot -Tsvg $fn_name.graph -o $fn_name.svg		
done

rm *.graph

