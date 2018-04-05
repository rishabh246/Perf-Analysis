
expirator.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <expire_items>:
   0:	41 55                	push   %r13
   2:	41 54                	push   %r12
   4:	49 89 f5             	mov    %rsi,%r13
   7:	55                   	push   %rbp
   8:	53                   	push   %rbx
   9:	49 89 fc             	mov    %rdi,%r12
   c:	89 d5                	mov    %edx,%ebp
   e:	31 db                	xor    %ebx,%ebx
  10:	48 83 ec 18          	sub    $0x18,%rsp
  14:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1b:	00 00 
  1d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  22:	31 c0                	xor    %eax,%eax
  24:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
  2b:	ff 
  2c:	eb 11                	jmp    3f <expire_items+0x3f>
  2e:	66 90                	xchg   %ax,%ax
  30:	8b 74 24 04          	mov    0x4(%rsp),%esi
  34:	4c 89 ef             	mov    %r13,%rdi
  37:	83 c3 01             	add    $0x1,%ebx
  3a:	e8 00 00 00 00       	callq  3f <expire_items+0x3f>
  3f:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  44:	89 ea                	mov    %ebp,%edx
  46:	4c 89 e7             	mov    %r12,%rdi
  49:	e8 00 00 00 00       	callq  4e <expire_items+0x4e>
  4e:	85 c0                	test   %eax,%eax
  50:	75 de                	jne    30 <expire_items+0x30>
  52:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  57:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  5e:	00 00 
  60:	89 d8                	mov    %ebx,%eax
  62:	75 0b                	jne    6f <expire_items+0x6f>
  64:	48 83 c4 18          	add    $0x18,%rsp
  68:	5b                   	pop    %rbx
  69:	5d                   	pop    %rbp
  6a:	41 5c                	pop    %r12
  6c:	41 5d                	pop    %r13
  6e:	c3                   	retq   
  6f:	e8 00 00 00 00       	callq  74 <expire_items+0x74>
