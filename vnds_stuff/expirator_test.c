#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <assert.h>
#include "x86intrin.h"
#include "vignat/flowmanager.h"
#include "lib/expirator.h"
#include "/home/rishabh/Perf-Analysis/Analysis/hand_analysis/papi-5.5.1/src/papi.h"
#define capacity 65536
#define occupancy 65536
#define nfreed 65536

void clear_cache()
{
  long long a[10000000000];
  for(long long i=0;i<10000000000;i++)
  { a[i] = i;
  }
}

int main()
{
  /* Libpapi Counters */
  int num_hwcntrs = 0, retval,EventSet = PAPI_NULL, native;
  PAPI_event_info_t info;
  int Events[] = {PAPI_TOT_CYC,PAPI_TOT_INS};
  /* Libpapi Counters */

 
  int alloc_rez = allocate_flowmanager(0,0,0,0,0,capacity);
  if (0 == alloc_rez) printf("Out of resources \n"); //Out of resources.
  struct int_key *keys = malloc(sizeof(*keys)*occupancy);
  printf("%lu\n",sizeof(*keys));
  struct flow flow;
   for (int i = 0; i < occupancy; i++)
  {  
     keys[i].int_src_port = i;
     keys[i].dst_port =i;
     keys[i].int_src_ip = i;
     keys[i].dst_ip = i;
     keys[i].int_device_id = i;
     keys[i].protocol = i;
     alloc_rez = allocate_flow(&keys[i],occupancy-i,&flow);
     if (0 == alloc_rez) printf("Out of resources \n"); //Out of resources.
     
  }
 
  printf("First allocation done \n");
  for (int i = occupancy-1; i >=0 ; i--)
  {
     alloc_rez = get_flow_by_int_key(&keys[i],occupancy-i,&flow);
     if (0 == alloc_rez) printf("Failed to rejuvenate \n"); //Failed to expire
      
  }

  printf("Rejuvenation done \n");
  
 // First start (init + start)
  struct timespec start_time, end_time;
//  assert((num_hwcntrs = PAPI_num_counters()) > PAPI_OK);
//  assert(sizeof(Events) / sizeof(Events[0]) <= num_hwcntrs);
//  assert((retval = PAPI_start_counters(Events, sizeof(Events) / sizeof(Events[0]))) == PAPI_OK);

  clear_cache();
  printf("Clearing cache \n");
  int y= clock_gettime(CLOCK_MONOTONIC,&start_time);



  alloc_rez = expire_flows(nfreed+1);
 

  y= clock_gettime(CLOCK_MONOTONIC,&end_time);

  
/*


  // Read counters.
  long long values[sizeof(Events) / sizeof(Events[0])];
  assert((retval = PAPI_read_counters(values, sizeof(Events) / sizeof(Events[0]))) == PAPI_OK);
  
  long long l1_dcm = values[0];
  long long tot_ins = values[1];
*/
  if (0 == alloc_rez) printf("Test Failed to expire \n"); //Failed to expire

  printf("Time is %ld \n",((end_time.tv_sec - start_time.tv_sec)*1000000000 + (end_time.tv_nsec - start_time.tv_nsec)));

 // printf("Ref clock cycles %llu \n",ref_cycles);

}
