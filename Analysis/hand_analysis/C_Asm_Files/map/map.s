
map.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <map_allocate>:
   0:	41 57                	push   %r15
   2:	41 56                	push   %r14
   4:	41 55                	push   %r13
   6:	41 54                	push   %r12
   8:	41 89 d5             	mov    %edx,%r13d
   b:	55                   	push   %rbp
   c:	53                   	push   %rbx
   d:	48 89 cd             	mov    %rcx,%rbp
  10:	48 83 ec 38          	sub    $0x38,%rsp
  14:	48 8b 01             	mov    (%rcx),%rax
  17:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  1c:	bf 40 00 00 00       	mov    $0x40,%edi
  21:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  26:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  2b:	e8 00 00 00 00       	callq  30 <map_allocate+0x30>
  30:	48 85 c0             	test   %rax,%rax
  33:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
  3a:	00 
  3b:	0f 84 de 00 00 00    	je     11f <map_allocate+0x11f>
  41:	4d 63 f5             	movslq %r13d,%r14
  44:	48 89 45 00          	mov    %rax,0x0(%rbp)
  48:	49 89 c7             	mov    %rax,%r15
  4b:	4a 8d 1c b5 00 00 00 	lea    0x0(,%r14,4),%rbx
  52:	00 
  53:	48 89 df             	mov    %rbx,%rdi
  56:	e8 00 00 00 00       	callq  5b <map_allocate+0x5b>
  5b:	48 85 c0             	test   %rax,%rax
  5e:	49 89 c4             	mov    %rax,%r12
  61:	0f 84 fb 00 00 00    	je     162 <map_allocate+0x162>
  67:	4a 8d 3c f5 00 00 00 	lea    0x0(,%r14,8),%rdi
  6e:	00 
  6f:	49 89 07             	mov    %rax,(%r15)
  72:	e8 00 00 00 00       	callq  77 <map_allocate+0x77>
  77:	48 85 c0             	test   %rax,%rax
  7a:	49 89 c6             	mov    %rax,%r14
  7d:	0f 84 d7 00 00 00    	je     15a <map_allocate+0x15a>
  83:	49 89 47 08          	mov    %rax,0x8(%r15)
  87:	48 89 df             	mov    %rbx,%rdi
  8a:	e8 00 00 00 00       	callq  8f <map_allocate+0x8f>
  8f:	48 85 c0             	test   %rax,%rax
  92:	0f 84 ba 00 00 00    	je     152 <map_allocate+0x152>
  98:	49 89 47 10          	mov    %rax,0x10(%r15)
  9c:	48 89 df             	mov    %rbx,%rdi
  9f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  a4:	e8 00 00 00 00       	callq  a9 <map_allocate+0xa9>
  a9:	48 85 c0             	test   %rax,%rax
  ac:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  b1:	0f 84 93 00 00 00    	je     14a <map_allocate+0x14a>
  b7:	49 89 47 18          	mov    %rax,0x18(%r15)
  bb:	48 89 df             	mov    %rbx,%rdi
  be:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  c3:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  c8:	e8 00 00 00 00       	callq  cd <map_allocate+0xcd>
  cd:	48 85 c0             	test   %rax,%rax
  d0:	49 89 c1             	mov    %rax,%r9
  d3:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  d8:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  dd:	74 59                	je     138 <map_allocate+0x138>
  df:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  e4:	49 89 47 20          	mov    %rax,0x20(%r15)
  e8:	48 83 ec 08          	sub    $0x8,%rsp
  ec:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  f1:	45 89 6f 28          	mov    %r13d,0x28(%r15)
  f5:	4c 89 e7             	mov    %r12,%rdi
  f8:	41 c7 47 2c 00 00 00 	movl   $0x0,0x2c(%r15)
  ff:	00 
 100:	49 89 57 38          	mov    %rdx,0x38(%r15)
 104:	4c 89 f2             	mov    %r14,%rdx
 107:	49 89 47 30          	mov    %rax,0x30(%r15)
 10b:	41 55                	push   %r13
 10d:	48 89 c6             	mov    %rax,%rsi
 110:	e8 00 00 00 00       	callq  115 <map_allocate+0x115>
 115:	58                   	pop    %rax
 116:	5a                   	pop    %rdx
 117:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%rsp)
 11e:	00 
 11f:	8b 44 24 04          	mov    0x4(%rsp),%eax
 123:	48 83 c4 38          	add    $0x38,%rsp
 127:	5b                   	pop    %rbx
 128:	5d                   	pop    %rbp
 129:	41 5c                	pop    %r12
 12b:	41 5d                	pop    %r13
 12d:	41 5e                	pop    %r14
 12f:	41 5f                	pop    %r15
 131:	c3                   	retq   
 132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 138:	4c 89 c7             	mov    %r8,%rdi
 13b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 140:	e8 00 00 00 00       	callq  145 <map_allocate+0x145>
 145:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 14a:	48 89 cf             	mov    %rcx,%rdi
 14d:	e8 00 00 00 00       	callq  152 <map_allocate+0x152>
 152:	4c 89 f7             	mov    %r14,%rdi
 155:	e8 00 00 00 00       	callq  15a <map_allocate+0x15a>
 15a:	4c 89 e7             	mov    %r12,%rdi
 15d:	e8 00 00 00 00       	callq  162 <map_allocate+0x162>
 162:	4c 89 ff             	mov    %r15,%rdi
 165:	e8 00 00 00 00       	callq  16a <map_allocate+0x16a>
 16a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 16f:	48 89 45 00          	mov    %rax,0x0(%rbp)
 173:	eb aa                	jmp    11f <map_allocate+0x11f>
 175:	90                   	nop
 176:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 17d:	00 00 00 

0000000000000180 <map_get>:
 180:	41 54                	push   %r12
 182:	55                   	push   %rbp
 183:	49 89 d4             	mov    %rdx,%r12
 186:	53                   	push   %rbx
 187:	48 89 fb             	mov    %rdi,%rbx
 18a:	48 89 f5             	mov    %rsi,%rbp
 18d:	48 89 f7             	mov    %rsi,%rdi
 190:	ff 53 38             	callq  *0x38(%rbx)
 193:	8b 7b 28             	mov    0x28(%rbx),%edi
 196:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
 19a:	49 89 e9             	mov    %rbp,%r9
 19d:	48 8b 53 10          	mov    0x10(%rbx),%rdx
 1a1:	48 8b 73 08          	mov    0x8(%rbx),%rsi
 1a5:	4c 8b 43 20          	mov    0x20(%rbx),%r8
 1a9:	57                   	push   %rdi
 1aa:	48 8b 3b             	mov    (%rbx),%rdi
 1ad:	41 54                	push   %r12
 1af:	50                   	push   %rax
 1b0:	ff 73 30             	pushq  0x30(%rbx)
 1b3:	e8 00 00 00 00       	callq  1b8 <map_get+0x38>
 1b8:	48 83 c4 20          	add    $0x20,%rsp
 1bc:	5b                   	pop    %rbx
 1bd:	5d                   	pop    %rbp
 1be:	41 5c                	pop    %r12
 1c0:	c3                   	retq   
 1c1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 1c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 1cd:	00 00 00 

00000000000001d0 <map_put>:
 1d0:	41 54                	push   %r12
 1d2:	55                   	push   %rbp
 1d3:	41 89 d4             	mov    %edx,%r12d
 1d6:	53                   	push   %rbx
 1d7:	48 89 fb             	mov    %rdi,%rbx
 1da:	48 89 f5             	mov    %rsi,%rbp
 1dd:	48 89 f7             	mov    %rsi,%rdi
 1e0:	ff 53 38             	callq  *0x38(%rbx)
 1e3:	8b 7b 28             	mov    0x28(%rbx),%edi
 1e6:	48 83 ec 08          	sub    $0x8,%rsp
 1ea:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
 1ee:	48 8b 53 10          	mov    0x10(%rbx),%rdx
 1f2:	48 8b 73 08          	mov    0x8(%rbx),%rsi
 1f6:	49 89 e9             	mov    %rbp,%r9
 1f9:	4c 8b 43 20          	mov    0x20(%rbx),%r8
 1fd:	57                   	push   %rdi
 1fe:	48 8b 3b             	mov    (%rbx),%rdi
 201:	41 54                	push   %r12
 203:	50                   	push   %rax
 204:	e8 00 00 00 00       	callq  209 <map_put+0x39>
 209:	48 83 c4 20          	add    $0x20,%rsp
 20d:	83 43 2c 01          	addl   $0x1,0x2c(%rbx)
 211:	5b                   	pop    %rbx
 212:	5d                   	pop    %rbp
 213:	41 5c                	pop    %r12
 215:	c3                   	retq   
 216:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 21d:	00 00 00 

0000000000000220 <map_erase>:
 220:	41 54                	push   %r12
 222:	55                   	push   %rbp
 223:	49 89 d4             	mov    %rdx,%r12
 226:	53                   	push   %rbx
 227:	48 89 fb             	mov    %rdi,%rbx
 22a:	48 89 f5             	mov    %rsi,%rbp
 22d:	48 89 f7             	mov    %rsi,%rdi
 230:	ff 53 38             	callq  *0x38(%rbx)
 233:	8b 7b 28             	mov    0x28(%rbx),%edi
 236:	48 83 ec 08          	sub    $0x8,%rsp
 23a:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
 23e:	41 54                	push   %r12
 240:	48 8b 53 10          	mov    0x10(%rbx),%rdx
 244:	49 89 e8             	mov    %rbp,%r8
 247:	48 8b 73 08          	mov    0x8(%rbx),%rsi
 24b:	4c 8b 4b 30          	mov    0x30(%rbx),%r9
 24f:	57                   	push   %rdi
 250:	48 8b 3b             	mov    (%rbx),%rdi
 253:	50                   	push   %rax
 254:	e8 00 00 00 00       	callq  259 <map_erase+0x39>
 259:	48 83 c4 20          	add    $0x20,%rsp
 25d:	83 6b 2c 01          	subl   $0x1,0x2c(%rbx)
 261:	5b                   	pop    %rbx
 262:	5d                   	pop    %rbp
 263:	41 5c                	pop    %r12
 265:	c3                   	retq   
 266:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 26d:	00 00 00 

0000000000000270 <map_size>:
 270:	8b 47 2c             	mov    0x2c(%rdi),%eax
 273:	c3                   	retq   
