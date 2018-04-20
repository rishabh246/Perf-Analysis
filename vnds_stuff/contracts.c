/*
This is the contract for the libVig data structures written in pseudo code - scope of the variables is all wrong.
Need to convert it into a format that KLEE recognizes 

- Rishabh Iyer
*/

#define DRAM_LATENCY 200
#define L1_LATENCY 2


/* Leaf Data Structures: */

/*  Map_impl: */

int map_impl_init_contract(int success, int capacity)
{	if(success)
	{	return (2*capacity+1)*DRAM_LATENCY;  // Have not gone through patterns here. In progress
 	}
	else return 0;
}

int map_impl_put_contract(int num_traversals)
{
	int constant =  20*DRAM_LATENCY; // Have not gone through patterns here. In progress
 	int dynamic =   ((2*num_traversals)/16 + 2)*DRAM_LATENCY + (((30*num_traversals)/16)-2)* L1_LATENCY; //The additional 2 is for misalignments 
	return constant + dynamic;
}

int map_impl_get_contract(int success, int num_traverals, int num_collisions)
{
	if(success)
	{ int constant = 19 * DRAM_LATENCY;}  // Have not gone through patterns here. In progress
	else
	{ int constant = 33 * DRAM_LATENCY;}  // Have not gone through patterns here. In progress
 	int dynamic = ((3*num_traversals)/16 + 2)*DRAM_LATENCY + (((45*num_traversals)/16)-2)* L1_LATENCY;
	dynamic += (9*num_collisions)* DRAM_LATENCY; // Have not gone through patterns here. In progress
	return constant+dynamic;
}

int map_impl_erase_contract(int num_traversals, int num_collisions)
{       
        int constant = 38 * DRAM_LATENCY; // Have not gone through patterns here. In progress
        int dynamic =((4*num_traversals)/16 + 2)*DRAM_LATENCY + (((60*num_traversals)/16)-2)* L1_LATENCY;
        dynamic += (9*num_collisions)* DRAM_LATENCY; // Have not gone through patterns here. In progress
	return constant + dynamic;
}
/****************************************************************************************************************/

/* Double chain */
int dchain_allocate_contract(int success, int capacity)
{
        if(success)
        {       int constant = (23 + 2*(capacity -1))*DRAM_LATENCY; // Have not gone through patterns here. In progress
        }
        else
        {
                int constant = 0;
        }
        return constant;
}
int dchain_allocate_new_index_contract(int success)
{
        if(success)
        {       int constant = (21)*DRAM_LATENCY; // Have not gone through patterns here. In progress
        }	
        else
        {
                int constant = 8*DRAM_LATENCY; // Have not gone through patterns here. In progress
        }
        return constant;
}
int dchain_rejuvenate_index_contract(int success)
{
        if(success)
        {       int constant = (18)*DRAM_LATENCY;  // Have not gone through patterns here. In progress
        }
        else
        {
                int constant = (9)*DRAM_LATENCY; // Have not gone through patterns here. In progress
        }
        return constant;
}
int dchain_expire_one_index_contract(int success)
{
        if(success)
        {       int constant = (23)*DRAM_LATENCY; // Have not gone through patterns here. In progress
        }
        else //We can reduce this to 9 if we condition on empty list
        {
                int constant = (13)*DRAM_LATENCY; // Have not gone through patterns here. In progress
        } 
        return constant;
}

/****************************************************************************************************************/
/****************************************************************************************************************/

/* Composite Data Structures: */

/*  Map: */
int map_allocate_contract(int success, int capacity)  
{
	if(success) int constant = 40*DRAM_LATENCY; // Have not gone through patterns here. In progress
	else int constant = 0;
	int dependency = map_impl_init_contract(success,capacity);
	return constant+dependency;
}

int map_put_contract(int num_traversals)
{
	// Constraints: num_traversals is upper bounded by length of longest subchain, which is upper bound by current occupancy, both of which have been exported
   
        int constant = 17 * DRAM_LATENCY; // Have not gone through patterns here. In progress
 	int dependency = map_impl_put_contract(num_traversals);
        return constant+dependency;
}

int map_get_contract( int num_traversals, int num_collisions, int success)
{
	int constant = 17 * DRAM_LATENCY; // Have not gone through patterns here. In progress
        int dependency = map_impl_get_contract(success,num_traversals,num_collisions);
        return constant+dependency;

}

int map_erase_contract( int num_traversals, int num_collisions)
{
	int constant = 17 * DRAM_LATENCY; // Have not gone through patterns here. In progress
        int dependency = map_impl_erase_contract(num_traversals,num_collisions);
        return constant+dependency;
}


/****************************************************************************************************************/

/*  Double Map: */


int dmap_allocate_contract( int success, int capacity)
{
	if(success)
	{	int constant = 91*DRAM_LATENCY;  // Have not gone through patterns here. In progress
	}
	else { int constant = 0;}
	int dependency = 2*map_impl_init_contract(success,capacity);
	return constant+dependency;
}
int dmap_get_a_contract(int success, int num_traversals_a, int num_collisions_a)
{
        int constant = 17 * DRAM_LATENCY; // Have not gone through patterns here. In progress
        int dependency = map_impl_get_contract(success,num_traversals_a,num_collisions_a);
        return constant+dependency;

}
int dmap_get_b_contract(int success, int num_traversals_b, int num_collisions_b)
{
        int constant = 17 * DRAM_LATENCY; // Have not gone through patterns here. In progress
        int dependency = map_impl_get_contract(success,num_traversals_b,num_collisions_b);
        return constant+dependency;

}
int dmap_put_contract(int num_traversals_a,int num_traversals_b)
{	 int constant = 42 * DRAM_LATENCY; // Have not gone through patterns here. In progress
	 int dependency = map_impl_put_contract(num_traversals_a);
	 dependency += map_impl_put_contract(num_traversals_b);
	 return constant+dependency;
}
int dmap_erase_contract(int num_traversals_a, int num_collisions_a, int num_traversals_b, int num_collisions_b)
{        int constant = 46 * DRAM_LATENCY; // Have not gone through patterns here. In progress
         int dependency = map_impl_erase_contract(num_traversals_a, num_collisions_a);
         dependency += map_impl_erase_contract(num_traversals_b, num_collisions_b);
         return constant+dependency;
}

/****************************************************************************************************************/

/*  Expirator  */

int expire_items_contract(int n_expired, int num_traversals_a, int num_collisions_a, int num_traversals_b, int num_collisions_b)
{
	int constant = 12 * DRAM_LATENCY; // Have not gone through patterns here. In progress
	int constant_dependency= dchain_expire_one_index_contract(0); // Eventually fail to expire
	if(n_expired > 0)
	{ 
        	int dynamic_dependency = dchain_expire_one_index_contract(1);
		dynamic_dependency+= 1*DRAM_LATENCY // Have not gone through patterns here. In progress
		dynamic_dependency+= dmap_erase_contract(num_traversals_a, num_collisions_a,num_traversals_b, num_collisions_b);
	}
	dynamic_dependency *= n_expired;
	return (constant + constant_dependency + dynamic_dependency);
} 	
