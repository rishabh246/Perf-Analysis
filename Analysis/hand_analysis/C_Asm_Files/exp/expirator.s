
expirator.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <expire_items>:
   0:	41 55                	push   %r13
   2:	41 54                	push   %r12
   4:	49 89 f5             	mov    %rsi,%r13
   7:	55                   	push   %rbp
   8:	53                   	push   %rbx
   9:	49 89 fc             	mov    %rdi,%r12
   c:	48 89 d5             	mov    %rdx,%rbp
   f:	31 db                	xor    %ebx,%ebx
  11:	48 83 ec 18          	sub    $0x18,%rsp
  15:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1c:	00 00 
  1e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  23:	31 c0                	xor    %eax,%eax
  25:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
  2c:	ff 
  2d:	eb 10                	jmp    3f <expire_items+0x3f>
  2f:	90                   	nop
  30:	8b 74 24 04          	mov    0x4(%rsp),%esi
  34:	4c 89 ef             	mov    %r13,%rdi
  37:	83 c3 01             	add    $0x1,%ebx
  3a:	e8 00 00 00 00       	callq  3f <expire_items+0x3f>
  3f:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  44:	48 89 ea             	mov    %rbp,%rdx
  47:	4c 89 e7             	mov    %r12,%rdi
  4a:	e8 00 00 00 00       	callq  4f <expire_items+0x4f>
  4f:	85 c0                	test   %eax,%eax
  51:	75 dd                	jne    30 <expire_items+0x30>
  53:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  58:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  5f:	00 00 
  61:	89 d8                	mov    %ebx,%eax
  63:	75 0b                	jne    70 <expire_items+0x70>
  65:	48 83 c4 18          	add    $0x18,%rsp
  69:	5b                   	pop    %rbx
  6a:	5d                   	pop    %rbp
  6b:	41 5c                	pop    %r12
  6d:	41 5d                	pop    %r13
  6f:	c3                   	retq   
  70:	e8 00 00 00 00       	callq  75 <expire_items+0x75>
  75:	90                   	nop
  76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  7d:	00 00 00 

0000000000000080 <expire_items_single_map>:
  80:	41 56                	push   %r14
  82:	41 55                	push   %r13
  84:	49 89 d6             	mov    %rdx,%r14
  87:	41 54                	push   %r12
  89:	55                   	push   %rbp
  8a:	49 89 fd             	mov    %rdi,%r13
  8d:	53                   	push   %rbx
  8e:	48 89 f5             	mov    %rsi,%rbp
  91:	49 89 cc             	mov    %rcx,%r12
  94:	31 db                	xor    %ebx,%ebx
  96:	48 83 ec 20          	sub    $0x20,%rsp
  9a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  a1:	00 00 
  a3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  a8:	31 c0                	xor    %eax,%eax
  aa:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  b1:	ff 
  b2:	eb 3b                	jmp    ef <expire_items_single_map+0x6f>
  b4:	0f 1f 40 00          	nopl   0x0(%rax)
  b8:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  bc:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  c1:	48 89 ef             	mov    %rbp,%rdi
  c4:	83 c3 01             	add    $0x1,%ebx
  c7:	e8 00 00 00 00       	callq  cc <expire_items_single_map+0x4c>
  cc:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  d1:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  d6:	4c 89 f7             	mov    %r14,%rdi
  d9:	e8 00 00 00 00       	callq  de <expire_items_single_map+0x5e>
  de:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  e3:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  e7:	48 89 ef             	mov    %rbp,%rdi
  ea:	e8 00 00 00 00       	callq  ef <expire_items_single_map+0x6f>
  ef:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  f4:	4c 89 e2             	mov    %r12,%rdx
  f7:	4c 89 ef             	mov    %r13,%rdi
  fa:	e8 00 00 00 00       	callq  ff <expire_items_single_map+0x7f>
  ff:	85 c0                	test   %eax,%eax
 101:	75 b5                	jne    b8 <expire_items_single_map+0x38>
 103:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 108:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 10f:	00 00 
 111:	89 d8                	mov    %ebx,%eax
 113:	75 0d                	jne    122 <expire_items_single_map+0xa2>
 115:	48 83 c4 20          	add    $0x20,%rsp
 119:	5b                   	pop    %rbx
 11a:	5d                   	pop    %rbp
 11b:	41 5c                	pop    %r12
 11d:	41 5d                	pop    %r13
 11f:	41 5e                	pop    %r14
 121:	c3                   	retq   
 122:	e8 00 00 00 00       	callq  127 <expire_items_single_map+0xa7>
