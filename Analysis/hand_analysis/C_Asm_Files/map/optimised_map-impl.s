
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
  34:	49 89 ff             	mov    %rdi,%r15
  37:	41 55                	push   %r13
  39:	41 54                	push   %r12
  3b:	49 89 cc             	mov    %rcx,%r12
  3e:	55                   	push   %rbp
  3f:	53                   	push   %rbx
  40:	48 83 ec 28          	sub    $0x28,%rsp
  44:	8b 6c 24 68          	mov    0x68(%rsp),%ebp
  48:	8b 44 24 78          	mov    0x78(%rsp),%eax
  4c:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  51:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  56:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
  5b:	44 8d b5 ff 1f 00 00 	lea    0x1fff(%rbp),%r14d
  62:	41 81 e6 ff 1f 00 00 	and    $0x1fff,%r14d
  69:	85 c0                	test   %eax,%eax
  6b:	42 8d 1c 30          	lea    (%rax,%r14,1),%ebx
  6f:	7f 18                	jg     89 <map_impl_get+0x59>
  71:	eb 7d                	jmp    f0 <map_impl_get+0xc0>
  73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  78:	41 8b 04 84          	mov    (%r12,%rax,4),%eax
  7c:	85 c0                	test   %eax,%eax
  7e:	74 70                	je     f0 <map_impl_get+0xc0>
  80:	41 83 c6 01          	add    $0x1,%r14d
  84:	44 39 f3             	cmp    %r14d,%ebx
  87:	74 67                	je     f0 <map_impl_get+0xc0>
  89:	41 8d 86 ff 1f 00 00 	lea    0x1fff(%r14),%eax
  90:	25 ff 1f 00 00       	and    $0x1fff,%eax
  95:	41 8b 0c 87          	mov    (%r15,%rax,4),%ecx
  99:	4c 8d 2c 85 00 00 00 	lea    0x0(,%rax,4),%r13
  a0:	00 
  a1:	85 c9                	test   %ecx,%ecx
  a3:	74 d3                	je     78 <map_impl_get+0x48>
  a5:	39 2c 82             	cmp    %ebp,(%rdx,%rax,4)
  a8:	75 ce                	jne    78 <map_impl_get+0x48>
  aa:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  af:	48 89 14 24          	mov    %rdx,(%rsp)
  b3:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  b8:	48 8b 3c c1          	mov    (%rcx,%rax,8),%rdi
  bc:	ff 54 24 60          	callq  *0x60(%rsp)
  c0:	85 c0                	test   %eax,%eax
  c2:	48 8b 14 24          	mov    (%rsp),%rdx
  c6:	74 b8                	je     80 <map_impl_get+0x50>
  c8:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  cd:	42 8b 14 28          	mov    (%rax,%r13,1),%edx
  d1:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
  d6:	89 10                	mov    %edx,(%rax)
  d8:	48 83 c4 28          	add    $0x28,%rsp
  dc:	b8 01 00 00 00       	mov    $0x1,%eax
  e1:	5b                   	pop    %rbx
  e2:	5d                   	pop    %rbp
  e3:	41 5c                	pop    %r12
  e5:	41 5d                	pop    %r13
  e7:	41 5e                	pop    %r14
  e9:	41 5f                	pop    %r15
  eb:	c3                   	retq   
  ec:	0f 1f 40 00          	nopl   0x0(%rax)
  f0:	48 83 c4 28          	add    $0x28,%rsp
  f4:	31 c0                	xor    %eax,%eax
  f6:	5b                   	pop    %rbx
  f7:	5d                   	pop    %rbp
  f8:	41 5c                	pop    %r12
  fa:	41 5d                	pop    %r13
  fc:	41 5e                	pop    %r14
  fe:	41 5f                	pop    %r15
 100:	c3                   	retq   
 101:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 106:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 10d:	00 00 00 

0000000000000110 <map_impl_put>:
 110:	41 55                	push   %r13
 112:	41 54                	push   %r12
 114:	55                   	push   %rbp
 115:	53                   	push   %rbx
 116:	8b 6c 24 28          	mov    0x28(%rsp),%ebp
 11a:	44 8b 6c 24 38       	mov    0x38(%rsp),%r13d
 11f:	44 8d a5 ff 1f 00 00 	lea    0x1fff(%rbp),%r12d
 126:	41 81 e4 ff 1f 00 00 	and    $0x1fff,%r12d
 12d:	45 85 ed             	test   %r13d,%r13d
 130:	7e 5c                	jle    18e <map_impl_put+0x7e>
 132:	41 8d 84 24 ff 1f 00 	lea    0x1fff(%r12),%eax
 139:	00 
 13a:	45 8d 5c 24 01       	lea    0x1(%r12),%r11d
 13f:	45 01 ec             	add    %r13d,%r12d
 142:	25 ff 1f 00 00       	and    $0x1fff,%eax
 147:	4c 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%r10
 14e:	00 
 14f:	4a 8d 1c 17          	lea    (%rdi,%r10,1),%rbx
 153:	44 8b 2b             	mov    (%rbx),%r13d
 156:	45 85 ed             	test   %r13d,%r13d
 159:	75 29                	jne    184 <map_impl_put+0x74>
 15b:	eb 63                	jmp    1c0 <map_impl_put+0xb0>
 15d:	0f 1f 00             	nopl   (%rax)
 160:	41 8d 83 ff 1f 00 00 	lea    0x1fff(%r11),%eax
 167:	41 83 c3 01          	add    $0x1,%r11d
 16b:	25 ff 1f 00 00       	and    $0x1fff,%eax
 170:	4c 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%r10
 177:	00 
 178:	4a 8d 1c 17          	lea    (%rdi,%r10,1),%rbx
 17c:	44 8b 2b             	mov    (%rbx),%r13d
 17f:	45 85 ed             	test   %r13d,%r13d
 182:	74 3c                	je     1c0 <map_impl_put+0xb0>
 184:	42 83 04 11 01       	addl   $0x1,(%rcx,%r10,1)
 189:	45 39 e3             	cmp    %r12d,%r11d
 18c:	75 d2                	jne    160 <map_impl_put+0x50>
 18e:	48 8d 5f fc          	lea    -0x4(%rdi),%rbx
 192:	48 c7 c0 f8 ff ff ff 	mov    $0xfffffffffffffff8,%rax
 199:	49 c7 c2 fc ff ff ff 	mov    $0xfffffffffffffffc,%r10
 1a0:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
 1a6:	4c 89 0c 06          	mov    %r9,(%rsi,%rax,1)
 1aa:	8b 44 24 30          	mov    0x30(%rsp),%eax
 1ae:	42 89 2c 12          	mov    %ebp,(%rdx,%r10,1)
 1b2:	5b                   	pop    %rbx
 1b3:	5d                   	pop    %rbp
 1b4:	43 89 04 10          	mov    %eax,(%r8,%r10,1)
 1b8:	41 5c                	pop    %r12
 1ba:	41 5d                	pop    %r13
 1bc:	c3                   	retq   
 1bd:	0f 1f 00             	nopl   (%rax)
 1c0:	48 c1 e0 03          	shl    $0x3,%rax
 1c4:	eb da                	jmp    1a0 <map_impl_put+0x90>
 1c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 1cd:	00 00 00 

00000000000001d0 <map_impl_erase>:
 1d0:	41 57                	push   %r15
 1d2:	41 56                	push   %r14
 1d4:	41 55                	push   %r13
 1d6:	41 54                	push   %r12
 1d8:	55                   	push   %rbp
 1d9:	53                   	push   %rbx
 1da:	48 83 ec 48          	sub    $0x48,%rsp
 1de:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
 1e3:	44 8b 84 24 80 00 00 	mov    0x80(%rsp),%r8d
 1ea:	00 
 1eb:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
 1f2:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
 1f7:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
 1fc:	41 8d a8 ff 1f 00 00 	lea    0x1fff(%r8),%ebp
 203:	81 e5 ff 1f 00 00    	and    $0x1fff,%ebp
 209:	85 c0                	test   %eax,%eax
 20b:	44 8d 3c 28          	lea    (%rax,%rbp,1),%r15d
 20f:	0f 8e a7 00 00 00    	jle    2bc <map_impl_erase+0xec>
 215:	49 89 fa             	mov    %rdi,%r10
 218:	eb 19                	jmp    233 <map_impl_erase+0x63>
 21a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 220:	83 c5 01             	add    $0x1,%ebp
 223:	41 83 ec 01          	sub    $0x1,%r12d
 227:	41 39 ef             	cmp    %ebp,%r15d
 22a:	44 89 23             	mov    %r12d,(%rbx)
 22d:	0f 84 89 00 00 00    	je     2bc <map_impl_erase+0xec>
 233:	8d 85 ff 1f 00 00    	lea    0x1fff(%rbp),%eax
 239:	25 ff 1f 00 00       	and    $0x1fff,%eax
 23e:	48 8d 1c 85 00 00 00 	lea    0x0(,%rax,4),%rbx
 245:	00 
 246:	4d 8d 2c 1a          	lea    (%r10,%rbx,1),%r13
 24a:	48 01 cb             	add    %rcx,%rbx
 24d:	44 39 04 82          	cmp    %r8d,(%rdx,%rax,4)
 251:	44 8b 23             	mov    (%rbx),%r12d
 254:	75 ca                	jne    220 <map_impl_erase+0x50>
 256:	41 8b 75 00          	mov    0x0(%r13),%esi
 25a:	85 f6                	test   %esi,%esi
 25c:	74 c2                	je     220 <map_impl_erase+0x50>
 25e:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
 263:	44 89 44 24 24       	mov    %r8d,0x24(%rsp)
 268:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
 26d:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
 272:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
 277:	4c 8d 34 c6          	lea    (%rsi,%rax,8),%r14
 27b:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
 280:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
 285:	49 8b 3e             	mov    (%r14),%rdi
 288:	ff d0                	callq  *%rax
 28a:	85 c0                	test   %eax,%eax
 28c:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
 291:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
 296:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 29b:	44 8b 44 24 24       	mov    0x24(%rsp),%r8d
 2a0:	0f 84 7a ff ff ff    	je     220 <map_impl_erase+0x50>
 2a6:	49 8b 16             	mov    (%r14),%rdx
 2a9:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
 2b0:	00 
 2b1:	41 c7 45 00 00 00 00 	movl   $0x0,0x0(%r13)
 2b8:	00 
 2b9:	48 89 10             	mov    %rdx,(%rax)
 2bc:	48 83 c4 48          	add    $0x48,%rsp
 2c0:	5b                   	pop    %rbx
 2c1:	5d                   	pop    %rbp
 2c2:	41 5c                	pop    %r12
 2c4:	41 5d                	pop    %r13
 2c6:	41 5e                	pop    %r14
 2c8:	41 5f                	pop    %r15
 2ca:	c3                   	retq   
 2cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000002d0 <map_impl_size>:
 2d0:	85 f6                	test   %esi,%esi
 2d2:	7e 1d                	jle    2f1 <map_impl_size+0x21>
 2d4:	8d 46 ff             	lea    -0x1(%rsi),%eax
 2d7:	48 8d 54 87 04       	lea    0x4(%rdi,%rax,4),%rdx
 2dc:	31 c0                	xor    %eax,%eax
 2de:	66 90                	xchg   %ax,%ax
 2e0:	83 3f 01             	cmpl   $0x1,(%rdi)
 2e3:	83 d8 ff             	sbb    $0xffffffff,%eax
 2e6:	48 83 c7 04          	add    $0x4,%rdi
 2ea:	48 39 d7             	cmp    %rdx,%rdi
 2ed:	75 f1                	jne    2e0 <map_impl_size+0x10>
 2ef:	f3 c3                	repz retq 
 2f1:	31 c0                	xor    %eax,%eax
 2f3:	c3                   	retq   
