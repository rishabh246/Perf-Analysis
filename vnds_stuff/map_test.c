
#include <stdio.h>
#include <stdlib.h>
#include "lib/containers/map-impl.h"
#include "map.h"
#include "lib/flow.h"
#include <time.h>
#include <assert.h>
#include "x86intrin.h"
#include "/home/rishabh/Analysis/hand_analysis/papi-5.5.1/src/papi.h"
#define capacity 65536

int main()
{
/* Libpapi Counters */
int num_hwcntrs = 0, retval,EventSet = PAPI_NULL, native;
  PAPI_event_info_t info;
int Events[] = {PAPI_TOT_CYC,PAPI_L1_DCM,PAPI_L2_DCM,PAPI_L3_TCM,PAPI_LD_INS,PAPI_SR_INS,PAPI_TOT_INS};
/* Libpapi Counters */

 struct Map* map;
 map_allocate(int_key_eq,int_key_hash,capacity,&map);
 struct int_key *k1 = malloc(sizeof(*k1)*capacity);
 int value,a,hash,erase_key ;
 int* val = malloc(sizeof *val);
 void** b = malloc(sizeof(void*));
 struct int_key* k2 = malloc(sizeof *k2);
 unsigned long long start,end;
 start  = 0;
 end = 0;
 int coll_ctr = 0 ;
int buckets[capacity];
for (int i = 0; i < capacity; i++)
{  buckets[i] = -1;}

for (int i = 0; i < capacity; i++)
{
// k1[i] =  malloc(sizeof (struct int_key));
 k1[i].int_src_port = i;
 k1[i].dst_port =i;
 k1[i].int_src_ip = i;
 k1[i].dst_ip = i;
 k1[i].int_device_id = i;
 k1[i].protocol = i;
 value = 50*i;
 map_put(map,&k1[i],value);
// a = map_get(map,&k1[i],val);
// printf("%d %d\n",a,i);
 hash = int_key_hash(&k1[i]);
 hash = hash%capacity;
 if(hash != i)
 printf("Hash is %d while i is %d\n",hash,i);
 while(1)
 {
    if(buckets[hash] == -1)
    {   buckets[hash] = i ;break;}
    else
       { hash = (hash+1)%capacity;}
 }
}
/* for (int i = 0; i < capacity; i++)
{
  printf("Bucket %d -> Key %d \n",i,buckets[i]);   
}
*/
//  printf("%d\n", map_size(map));
 int i = capacity;
 k2->int_src_port = i;
 k2->dst_port =i;
 k2->int_src_ip = i;
 k2->dst_ip = i;
 k2->int_device_id = i;
 k2->protocol = i;
 value = 50*i;
 hash = int_key_hash(k2);
 hash = hash%capacity;
// printf("%d\n",hash);

 erase_key = buckets[(((hash-1)+capacity)%capacity)];
 buckets[(((hash-1)+capacity)%capacity)] = -1;

 //printf("Erase Key is %d\n",erase_key);
 //a = map_get(map,&k1[erase_key],val);
  map_erase(map,&k1[erase_key],b);
//  printf("%d\n", map_size(map));
//  printf("%d\n", a);
/* for (int i = 0; i < capacity; i++)
{
   printf("Bucket %d -> Key %d \n",i,buckets[i]);
}*/

/* for( int j = 0;j<capacity;j++)
 {  
     k2 ->int_src_port = j;
     k2 -> dst_port =j;
     k2 -> int_src_ip = j;
     k2 -> dst_ip = j;
     k2 -> int_device_id = j;
     k2 -> protocol = j;
     hash = int_key_hash(k2);
     if( j!= erase_key && hash == int_key_hash(k1))
           coll_ctr ++ ;
  }
  printf("Number of collisions %d\n",coll_ctr);
*/

// Start couting with libpapi 
// First start (init + start)
struct timespec start_time, end_time;
assert((num_hwcntrs = PAPI_num_counters()) > PAPI_OK);
assert(sizeof(Events) / sizeof(Events[0]) <= num_hwcntrs);
assert((retval = PAPI_start_counters(Events, sizeof(Events) / sizeof(Events[0]))) == PAPI_OK);

int y= clock_gettime(CLOCK_MONOTONIC,&start_time);

long long native_values[10] ;
//assert(PAPI_start(EventSet)==PAPI_OK);


 map_put(map,k2,value);

//assert(PAPI_stop(EventSet,native_values)==PAPI_OK);


 y= clock_gettime(CLOCK_MONOTONIC,&end_time);





// Read counters.
long long values[sizeof(Events) / sizeof(Events[0])];
assert((retval = PAPI_read_counters(values, sizeof(Events) / sizeof(Events[0]))) == PAPI_OK);
long long l1_dcm = values[0];
long long no_issue = values[1];
long long ref_cycles = values[2];
long long l2_dcm  = values[3];
long long tot_ins = values[4];
long long l3_tcm = values[5];

printf("Time is %ld \n",((end_time.tv_sec - start_time.tv_sec)*1000000000 + (end_time.tv_nsec - start_time.tv_nsec)));

 hash = int_key_hash(k2);
 hash = hash%capacity;
 while(1)
 {
    if(buckets[hash] == -1)
    {   buckets[hash] = i ;break;}
    else
        hash = (hash+1)%capacity;
 }
/* for (int i = 0; i < capacity; i++)
{
   printf("Bucket %d -> Key %d \n",i,buckets[i]);   
}*/

 // printf("%d\n", map_size(map));
//  a = map_get(map,k2,val);
//  printf("Successful get occurred %d\n",a);
 // map_erase(map,k2,b);
  printf("Ref clock cycles %llu \n",ref_cycles);
 // printf("L1 prefetch miss stats %llu \n",l1_icm); 
 printf("L1 D misses %llu \n",l1_dcm);
 printf("L2 D misses %llu \n", l2_dcm);
 printf("Total L3 misses %llu \n", l3_tcm);
  printf("Total Instructions %llu \n", tot_ins);

}

