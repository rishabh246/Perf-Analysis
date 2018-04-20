#include <stdio.h>
#include <stdlib.h>
#include "lib/flow.h"
#include <time.h>
#include <assert.h>

#include "lib/containers/double-chain.h"
#include "lib/containers/double-chain-impl.h"

#define max_flows 10

int main()
{
   struct DoubleChain* chain;
   uint32_t expiration_time = 10;
   if (0 == dchain_allocate(max_flows, &chain))
        printf("Failed to allocate\n");
   else 
	printf("Allocated double-chain\n");
   int index = 0;
   int result; 
    for(uint32_t i =0; i<max_flows; i++)
   {
	 result = dchain_allocate_new_index(chain,&index,i);
         if(result == 0)
	{ printf("Failed to allocate\n");
 	  break;
        }
    }
    uint32_t time = max_flows;
    int count = 0;
    while (dchain_expire_one_index(chain, &index, time))
    { 
	 count++;
    }
    printf("Expired %d items \n", count);
}
