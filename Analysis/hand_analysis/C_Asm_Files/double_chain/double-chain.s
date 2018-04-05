
double-chain.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <dchain_allocate>:
   0:	41 57                	push   %r15
   2:	41 56                	push   %r14
   4:	41 55                	push   %r13
   6:	41 54                	push   %r12
   8:	45 31 e4             	xor    %r12d,%r12d
   b:	55                   	push   %rbp
   c:	53                   	push   %rbx
   d:	89 fb                	mov    %edi,%ebx
   f:	bf 10 00 00 00       	mov    $0x10,%edi
  14:	48 89 f5             	mov    %rsi,%rbp
  17:	48 83 ec 08          	sub    $0x8,%rsp
  1b:	4c 8b 2e             	mov    (%rsi),%r13
  1e:	e8 00 00 00 00       	callq  23 <dchain_allocate+0x23>
  23:	48 85 c0             	test   %rax,%rax
  26:	74 46                	je     6e <dchain_allocate+0x6e>
  28:	8d 7b 02             	lea    0x2(%rbx),%edi
  2b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  2f:	49 89 c6             	mov    %rax,%r14
  32:	48 63 ff             	movslq %edi,%rdi
  35:	48 c1 e7 03          	shl    $0x3,%rdi
  39:	e8 00 00 00 00       	callq  3e <dchain_allocate+0x3e>
  3e:	48 85 c0             	test   %rax,%rax
  41:	49 89 c7             	mov    %rax,%r15
  44:	74 42                	je     88 <dchain_allocate+0x88>
  46:	48 63 fb             	movslq %ebx,%rdi
  49:	49 89 06             	mov    %rax,(%r14)
  4c:	48 c1 e7 02          	shl    $0x2,%rdi
  50:	e8 00 00 00 00       	callq  55 <dchain_allocate+0x55>
  55:	48 85 c0             	test   %rax,%rax
  58:	74 26                	je     80 <dchain_allocate+0x80>
  5a:	49 89 46 08          	mov    %rax,0x8(%r14)
  5e:	89 de                	mov    %ebx,%esi
  60:	4c 89 ff             	mov    %r15,%rdi
  63:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  69:	e8 00 00 00 00       	callq  6e <dchain_allocate+0x6e>
  6e:	48 83 c4 08          	add    $0x8,%rsp
  72:	44 89 e0             	mov    %r12d,%eax
  75:	5b                   	pop    %rbx
  76:	5d                   	pop    %rbp
  77:	41 5c                	pop    %r12
  79:	41 5d                	pop    %r13
  7b:	41 5e                	pop    %r14
  7d:	41 5f                	pop    %r15
  7f:	c3                   	retq   
  80:	4c 89 ff             	mov    %r15,%rdi
  83:	e8 00 00 00 00       	callq  88 <dchain_allocate+0x88>
  88:	4c 89 f7             	mov    %r14,%rdi
  8b:	e8 00 00 00 00       	callq  90 <dchain_allocate+0x90>
  90:	4c 89 6d 00          	mov    %r13,0x0(%rbp)
  94:	eb d8                	jmp    6e <dchain_allocate+0x6e>
  96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  9d:	00 00 00 

00000000000000a0 <dchain_allocate_new_index>:
  a0:	41 54                	push   %r12
  a2:	55                   	push   %rbp
  a3:	41 89 d4             	mov    %edx,%r12d
  a6:	53                   	push   %rbx
  a7:	48 89 fb             	mov    %rdi,%rbx
  aa:	48 8b 3f             	mov    (%rdi),%rdi
  ad:	48 89 f5             	mov    %rsi,%rbp
  b0:	e8 00 00 00 00       	callq  b5 <dchain_allocate_new_index+0x15>
  b5:	85 c0                	test   %eax,%eax
  b7:	74 0c                	je     c5 <dchain_allocate_new_index+0x25>
  b9:	48 63 4d 00          	movslq 0x0(%rbp),%rcx
  bd:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  c1:	44 89 24 8a          	mov    %r12d,(%rdx,%rcx,4)
  c5:	5b                   	pop    %rbx
  c6:	5d                   	pop    %rbp
  c7:	41 5c                	pop    %r12
  c9:	c3                   	retq   
  ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000000d0 <dchain_rejuvenate_index>:
  d0:	41 54                	push   %r12
  d2:	55                   	push   %rbp
  d3:	48 89 fd             	mov    %rdi,%rbp
  d6:	53                   	push   %rbx
  d7:	48 8b 3f             	mov    (%rdi),%rdi
  da:	48 63 de             	movslq %esi,%rbx
  dd:	89 de                	mov    %ebx,%esi
  df:	41 89 d4             	mov    %edx,%r12d
  e2:	e8 00 00 00 00       	callq  e7 <dchain_rejuvenate_index+0x17>
  e7:	85 c0                	test   %eax,%eax
  e9:	74 08                	je     f3 <dchain_rejuvenate_index+0x23>
  eb:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  ef:	44 89 24 9a          	mov    %r12d,(%rdx,%rbx,4)
  f3:	5b                   	pop    %rbx
  f4:	5d                   	pop    %rbp
  f5:	41 5c                	pop    %r12
  f7:	c3                   	retq   
  f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  ff:	00 

0000000000000100 <dchain_expire_one_index>:
 100:	41 54                	push   %r12
 102:	55                   	push   %rbp
 103:	41 89 d4             	mov    %edx,%r12d
 106:	53                   	push   %rbx
 107:	48 89 fb             	mov    %rdi,%rbx
 10a:	48 8b 3f             	mov    (%rdi),%rdi
 10d:	48 89 f5             	mov    %rsi,%rbp
 110:	e8 00 00 00 00       	callq  115 <dchain_expire_one_index+0x15>
 115:	85 c0                	test   %eax,%eax
 117:	74 11                	je     12a <dchain_expire_one_index+0x2a>
 119:	48 63 55 00          	movslq 0x0(%rbp),%rdx
 11d:	48 8b 43 08          	mov    0x8(%rbx),%rax
 121:	44 39 24 90          	cmp    %r12d,(%rax,%rdx,4)
 125:	48 89 d6             	mov    %rdx,%rsi
 128:	72 0e                	jb     138 <dchain_expire_one_index+0x38>
 12a:	5b                   	pop    %rbx
 12b:	31 c0                	xor    %eax,%eax
 12d:	5d                   	pop    %rbp
 12e:	41 5c                	pop    %r12
 130:	c3                   	retq   
 131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 138:	48 8b 3b             	mov    (%rbx),%rdi
 13b:	5b                   	pop    %rbx
 13c:	5d                   	pop    %rbp
 13d:	41 5c                	pop    %r12
 13f:   e9 00 00 00 00          jmpq   144 <dchain_expire_one_index+0x44>
