
map-impl.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <map_impl_init>:
   0:	8b 54 24 08          	mov    0x8(%rsp),%edx
   4:	31 c0                	xor    %eax,%eax
   6:	85 d2                	test   %edx,%edx
   8:	7e 1d                	jle    27 <map_impl_init+0x27>
   a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  10:	c7 04 87 00 00 00 00 	movl   $0x0,(%rdi,%rax,4)
  17:	41 c7 04 80 00 00 00 	movl   $0x0,(%r8,%rax,4)
  1e:	00 
  1f:	48 83 c0 01          	add    $0x1,%rax
  23:	39 c2                	cmp    %eax,%edx
  25:	7f e9                	jg     10 <map_impl_init+0x10>
  27:	f3 c3                	repz retq 
  29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000030 <map_impl_get>:
  30:	41 57                	push   %r15
  32:	41 56                	push   %r14
  34:	49 89 d3             	mov    %rdx,%r11
  37:	41 55                	push   %r13
  39:	41 54                	push   %r12
  3b:	49 89 fa             	mov    %rdi,%r10
  3e:	55                   	push   %rbp
  3f:	53                   	push   %rbx
  40:	48 83 ec 38          	sub    $0x38,%rsp
  44:	44 8b 7c 24 78       	mov    0x78(%rsp),%r15d
  49:	8b 9c 24 88 00 00 00 	mov    0x88(%rsp),%ebx
  50:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
  55:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
  5a:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
  5f:	44 89 f8             	mov    %r15d,%eax
  62:	99                   	cltd   
  63:	f7 fb                	idiv   %ebx
  65:	8d 04 1a             	lea    (%rdx,%rbx,1),%eax
  68:	99                   	cltd   
  69:	f7 fb                	idiv   %ebx
  6b:	85 db                	test   %ebx,%ebx
  6d:	44 8d 34 13          	lea    (%rbx,%rdx,1),%r14d
  71:	89 d5                	mov    %edx,%ebp
  73:	7f 22                	jg     97 <map_impl_get+0x67>
  75:	e9 a6 00 00 00       	jmpq   120 <map_impl_get+0xf0>
  7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  80:	8b 04 81             	mov    (%rcx,%rax,4),%eax
  83:	85 c0                	test   %eax,%eax
  85:	0f 84 95 00 00 00    	je     120 <map_impl_get+0xf0>
  8b:	83 c5 01             	add    $0x1,%ebp
  8e:	41 39 ee             	cmp    %ebp,%r14d
  91:	0f 84 89 00 00 00    	je     120 <map_impl_get+0xf0>
  97:	89 e8                	mov    %ebp,%eax
  99:	99                   	cltd   
  9a:	f7 fb                	idiv   %ebx
  9c:	8d 04 1a             	lea    (%rdx,%rbx,1),%eax
  9f:	99                   	cltd   
  a0:	f7 fb                	idiv   %ebx
  a2:	48 63 c2             	movslq %edx,%rax
  a5:	41 8b 14 82          	mov    (%r10,%rax,4),%edx
  a9:	49 89 c4             	mov    %rax,%r12
  ac:	4c 8d 2c 85 00 00 00 	lea    0x0(,%rax,4),%r13
  b3:	00 
  b4:	85 d2                	test   %edx,%edx
  b6:	74 c8                	je     80 <map_impl_get+0x50>
  b8:	45 39 3c 83          	cmp    %r15d,(%r11,%rax,4)
  bc:	75 c2                	jne    80 <map_impl_get+0x50>
  be:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  c3:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  c8:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  cd:	4c 89 14 24          	mov    %r10,(%rsp)
  d1:	48 8b 3c c6          	mov    (%rsi,%rax,8),%rdi
  d5:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  da:	ff 54 24 70          	callq  *0x70(%rsp)
  de:	85 c0                	test   %eax,%eax
  e0:	4c 8b 14 24          	mov    (%rsp),%r10
  e4:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
  e9:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  ee:	74 9b                	je     8b <map_impl_get+0x5b>
  f0:	41 83 fc ff          	cmp    $0xffffffff,%r12d
  f4:	74 2a                	je     120 <map_impl_get+0xf0>
  f6:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  fb:	42 8b 14 28          	mov    (%rax,%r13,1),%edx
  ff:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
 106:	00 
 107:	89 10                	mov    %edx,(%rax)
 109:	48 83 c4 38          	add    $0x38,%rsp
 10d:	b8 01 00 00 00       	mov    $0x1,%eax
 112:	5b                   	pop    %rbx
 113:	5d                   	pop    %rbp
 114:	41 5c                	pop    %r12
 116:	41 5d                	pop    %r13
 118:	41 5e                	pop    %r14
 11a:	41 5f                	pop    %r15
 11c:	c3                   	retq   
 11d:	0f 1f 00             	nopl   (%rax)
 120:	48 83 c4 38          	add    $0x38,%rsp
 124:	31 c0                	xor    %eax,%eax
 126:	5b                   	pop    %rbx
 127:	5d                   	pop    %rbp
 128:	41 5c                	pop    %r12
 12a:	41 5d                	pop    %r13
 12c:	41 5e                	pop    %r14
 12e:	41 5f                	pop    %r15
 130:	c3                   	retq   
 131:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 136:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 13d:	00 00 00 

0000000000000140 <map_impl_put>:
 140:	41 56                	push   %r14
 142:	41 55                	push   %r13
 144:	41 54                	push   %r12
 146:	55                   	push   %rbp
 147:	48 89 d5             	mov    %rdx,%rbp
 14a:	53                   	push   %rbx
 14b:	44 8b 64 24 30       	mov    0x30(%rsp),%r12d
 150:	44 8b 54 24 40       	mov    0x40(%rsp),%r10d
 155:	44 89 e0             	mov    %r12d,%eax
 158:	99                   	cltd   
 159:	41 f7 fa             	idiv   %r10d
 15c:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
 160:	99                   	cltd   
 161:	41 f7 fa             	idiv   %r10d
 164:	45 85 d2             	test   %r10d,%r10d
 167:	7e 6a                	jle    1d3 <map_impl_put+0x93>
 169:	89 d0                	mov    %edx,%eax
 16b:	89 d3                	mov    %edx,%ebx
 16d:	99                   	cltd   
 16e:	44 8d 5b 01          	lea    0x1(%rbx),%r11d
 172:	44 01 d3             	add    %r10d,%ebx
 175:	41 f7 fa             	idiv   %r10d
 178:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
 17c:	99                   	cltd   
 17d:	41 f7 fa             	idiv   %r10d
 180:	48 63 d2             	movslq %edx,%rdx
 183:	4c 8d 2c 95 00 00 00 	lea    0x0(,%rdx,4),%r13
 18a:	00 
 18b:	4e 8d 34 2f          	lea    (%rdi,%r13,1),%r14
 18f:	41 8b 06             	mov    (%r14),%eax
 192:	85 c0                	test   %eax,%eax
 194:	75 33                	jne    1c9 <map_impl_put+0x89>
 196:	eb 78                	jmp    210 <map_impl_put+0xd0>
 198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 19f:	00 
 1a0:	44 89 d8             	mov    %r11d,%eax
 1a3:	41 83 c3 01          	add    $0x1,%r11d
 1a7:	99                   	cltd   
 1a8:	41 f7 fa             	idiv   %r10d
 1ab:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
 1af:	99                   	cltd   
 1b0:	41 f7 fa             	idiv   %r10d
 1b3:	48 63 d2             	movslq %edx,%rdx
 1b6:	4c 8d 2c 95 00 00 00 	lea    0x0(,%rdx,4),%r13
 1bd:	00 
 1be:	4e 8d 34 2f          	lea    (%rdi,%r13,1),%r14
 1c2:	41 8b 06             	mov    (%r14),%eax
 1c5:	85 c0                	test   %eax,%eax
 1c7:	74 47                	je     210 <map_impl_put+0xd0>
 1c9:	42 83 04 29 01       	addl   $0x1,(%rcx,%r13,1)
 1ce:	44 39 db             	cmp    %r11d,%ebx
 1d1:	75 cd                	jne    1a0 <map_impl_put+0x60>
 1d3:	4c 8d 77 fc          	lea    -0x4(%rdi),%r14
 1d7:	48 c7 c2 f8 ff ff ff 	mov    $0xfffffffffffffff8,%rdx
 1de:	49 c7 c5 fc ff ff ff 	mov    $0xfffffffffffffffc,%r13
 1e5:	8b 44 24 38          	mov    0x38(%rsp),%eax
 1e9:	41 c7 06 01 00 00 00 	movl   $0x1,(%r14)
 1f0:	4c 89 0c 16          	mov    %r9,(%rsi,%rdx,1)
 1f4:	46 89 64 2d 00       	mov    %r12d,0x0(%rbp,%r13,1)
 1f9:	5b                   	pop    %rbx
 1fa:	43 89 04 28          	mov    %eax,(%r8,%r13,1)
 1fe:	5d                   	pop    %rbp
 1ff:	41 5c                	pop    %r12
 201:	41 5d                	pop    %r13
 203:	41 5e                	pop    %r14
 205:	c3                   	retq   
 206:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 20d:	00 00 00 
 210:	48 c1 e2 03          	shl    $0x3,%rdx
 214:	eb cf                	jmp    1e5 <map_impl_put+0xa5>
 216:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 21d:	00 00 00 

0000000000000220 <map_impl_erase>:
 220:	41 57                	push   %r15
 222:	41 56                	push   %r14
 224:	49 89 d2             	mov    %rdx,%r10
 227:	41 55                	push   %r13
 229:	41 54                	push   %r12
 22b:	55                   	push   %rbp
 22c:	53                   	push   %rbx
 22d:	48 83 ec 48          	sub    $0x48,%rsp
 231:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
 236:	44 8b 84 24 80 00 00 	mov    0x80(%rsp),%r8d
 23d:	00 
 23e:	8b ac 24 88 00 00 00 	mov    0x88(%rsp),%ebp
 245:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
 24a:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
 24f:	44 89 c0             	mov    %r8d,%eax
 252:	99                   	cltd   
 253:	f7 fd                	idiv   %ebp
 255:	8d 04 2a             	lea    (%rdx,%rbp,1),%eax
 258:	99                   	cltd   
 259:	f7 fd                	idiv   %ebp
 25b:	85 ed                	test   %ebp,%ebp
 25d:	44 8d 4c 15 00       	lea    0x0(%rbp,%rdx,1),%r9d
 262:	0f 8e b7 00 00 00    	jle    31f <map_impl_erase+0xff>
 268:	49 89 fb             	mov    %rdi,%r11
 26b:	41 89 d4             	mov    %edx,%r12d
 26e:	45 89 cf             	mov    %r9d,%r15d
 271:	eb 19                	jmp    28c <map_impl_erase+0x6c>
 273:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 278:	41 83 c4 01          	add    $0x1,%r12d
 27c:	41 83 ed 01          	sub    $0x1,%r13d
 280:	45 39 e7             	cmp    %r12d,%r15d
 283:	44 89 2b             	mov    %r13d,(%rbx)
 286:	0f 84 93 00 00 00    	je     31f <map_impl_erase+0xff>
 28c:	44 89 e0             	mov    %r12d,%eax
 28f:	99                   	cltd   
 290:	f7 fd                	idiv   %ebp
 292:	8d 04 2a             	lea    (%rdx,%rbp,1),%eax
 295:	99                   	cltd   
 296:	f7 fd                	idiv   %ebp
 298:	48 63 d2             	movslq %edx,%rdx
 29b:	48 8d 1c 95 00 00 00 	lea    0x0(,%rdx,4),%rbx
 2a2:	00 
 2a3:	4d 8d 34 1b          	lea    (%r11,%rbx,1),%r14
 2a7:	48 01 cb             	add    %rcx,%rbx
 2aa:	45 39 04 92          	cmp    %r8d,(%r10,%rdx,4)
 2ae:	44 8b 2b             	mov    (%rbx),%r13d
 2b1:	75 c5                	jne    278 <map_impl_erase+0x58>
 2b3:	41 8b 06             	mov    (%r14),%eax
 2b6:	85 c0                	test   %eax,%eax
 2b8:	74 be                	je     278 <map_impl_erase+0x58>
 2ba:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
 2bf:	44 89 44 24 24       	mov    %r8d,0x24(%rsp)
 2c4:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
 2c9:	4c 89 54 24 10       	mov    %r10,0x10(%rsp)
 2ce:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
 2d3:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
 2d8:	48 8d 14 d0          	lea    (%rax,%rdx,8),%rdx
 2dc:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
 2e1:	48 8b 3a             	mov    (%rdx),%rdi
 2e4:	48 89 14 24          	mov    %rdx,(%rsp)
 2e8:	ff d0                	callq  *%rax
 2ea:	85 c0                	test   %eax,%eax
 2ec:	48 8b 14 24          	mov    (%rsp),%rdx
 2f0:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
 2f5:	4c 8b 54 24 10       	mov    0x10(%rsp),%r10
 2fa:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 2ff:	44 8b 44 24 24       	mov    0x24(%rsp),%r8d
 304:	0f 84 6e ff ff ff    	je     278 <map_impl_erase+0x58>
 30a:	48 8b 12             	mov    (%rdx),%rdx
 30d:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
 314:	00 
 315:	41 c7 06 00 00 00 00 	movl   $0x0,(%r14)
 31c:	48 89 10             	mov    %rdx,(%rax)
 31f:	48 83 c4 48          	add    $0x48,%rsp
 323:	5b                   	pop    %rbx
 324:	5d                   	pop    %rbp
 325:	41 5c                	pop    %r12
 327:	41 5d                	pop    %r13
 329:	41 5e                	pop    %r14
 32b:	41 5f                	pop    %r15
 32d:	c3                   	retq   
 32e:	66 90                	xchg   %ax,%ax

0000000000000330 <map_impl_size>:
 330:	85 f6                	test   %esi,%esi
 332:	7e 1d                	jle    351 <map_impl_size+0x21>
 334:	8d 46 ff             	lea    -0x1(%rsi),%eax
 337:	48 8d 54 87 04       	lea    0x4(%rdi,%rax,4),%rdx
 33c:	31 c0                	xor    %eax,%eax
 33e:	66 90                	xchg   %ax,%ax
 340:	83 3f 01             	cmpl   $0x1,(%rdi)
 343:	83 d8 ff             	sbb    $0xffffffff,%eax
 346:	48 83 c7 04          	add    $0x4,%rdi
 34a:	48 39 d7             	cmp    %rdx,%rdi
 34d:	75 f1                	jne    340 <map_impl_size+0x10>
 34f:	f3 c3                	repz retq 
 351:	31 c0                	xor    %eax,%eax
 353:	c3                   	retq   
