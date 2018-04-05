
double-chain-impl.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <dchain_impl_init>:
   0:	83 fe 01             	cmp    $0x1,%esi
   3:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
   9:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  10:	c7 47 0c 02 00 00 00 	movl   $0x2,0xc(%rdi)
  17:	c7 47 08 02 00 00 00 	movl   $0x2,0x8(%rdi)
  1e:	7e 38                	jle    58 <dchain_impl_init+0x58>
  20:	48 8d 57 14          	lea    0x14(%rdi),%rdx
  24:	83 c6 01             	add    $0x1,%esi
  27:	b8 02 00 00 00       	mov    $0x2,%eax
  2c:	0f 1f 40 00          	nopl   0x0(%rax)
  30:	83 c0 01             	add    $0x1,%eax
  33:	48 83 c2 08          	add    $0x8,%rdx
  37:	89 42 f8             	mov    %eax,-0x8(%rdx)
  3a:	89 42 f4             	mov    %eax,-0xc(%rdx)
  3d:	39 f0                	cmp    %esi,%eax
  3f:	75 ef                	jne    30 <dchain_impl_init+0x30>
  41:	48 98                	cltq   
  43:	48 c1 e0 03          	shl    $0x3,%rax
  47:	48 01 c7             	add    %rax,%rdi
  4a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%rdi)
  51:	c7 07 01 00 00 00    	movl   $0x1,(%rdi)
  57:	c3                   	retq   
  58:	b8 10 00 00 00       	mov    $0x10,%eax
  5d:	eb e8                	jmp    47 <dchain_impl_init+0x47>
  5f:	90                   	nop

0000000000000060 <dchain_impl_allocate_new_index>:
  60:	8b 47 0c             	mov    0xc(%rdi),%eax
  63:	83 f8 01             	cmp    $0x1,%eax
  66:	74 38                	je     a0 <dchain_impl_allocate_new_index+0x40>
  68:	48 63 d0             	movslq %eax,%rdx
  6b:	48 8d 14 d7          	lea    (%rdi,%rdx,8),%rdx
  6f:	8b 4a 04             	mov    0x4(%rdx),%ecx
  72:	89 4f 0c             	mov    %ecx,0xc(%rdi)
  75:	89 4f 08             	mov    %ecx,0x8(%rdi)
  78:	8b 0f                	mov    (%rdi),%ecx
  7a:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%rdx)
  81:	89 0a                	mov    %ecx,(%rdx)
  83:	48 63 17             	movslq (%rdi),%rdx
  86:	89 44 d7 04          	mov    %eax,0x4(%rdi,%rdx,8)
  8a:	89 07                	mov    %eax,(%rdi)
  8c:	83 e8 02             	sub    $0x2,%eax
  8f:	89 06                	mov    %eax,(%rsi)
  91:	b8 01 00 00 00       	mov    $0x1,%eax
  96:	c3                   	retq   
  97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  9e:	00 00 
  a0:	31 c0                	xor    %eax,%eax
  a2:	c3                   	retq   
  a3:	0f 1f 00             	nopl   (%rax)
  a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  ad:	00 00 00 

00000000000000b0 <dchain_impl_free_index>:
  b0:	83 c6 02             	add    $0x2,%esi
  b3:	48 63 c6             	movslq %esi,%rax
  b6:	48 8d 0c c7          	lea    (%rdi,%rax,8),%rcx
  ba:	44 8b 01             	mov    (%rcx),%r8d
  bd:	48 63 51 04          	movslq 0x4(%rcx),%rdx
  c1:	45 85 c0             	test   %r8d,%r8d
  c4:	74 0a                	je     d0 <dchain_impl_free_index+0x20>
  c6:	31 c0                	xor    %eax,%eax
  c8:	41 39 d0             	cmp    %edx,%r8d
  cb:	75 03                	jne    d0 <dchain_impl_free_index+0x20>
  cd:	f3 c3                	repz retq 
  cf:	90                   	nop
  d0:	49 63 c0             	movslq %r8d,%rax
  d3:	89 54 c7 04          	mov    %edx,0x4(%rdi,%rax,8)
  d7:	8b 47 0c             	mov    0xc(%rdi),%eax
  da:	44 89 04 d7          	mov    %r8d,(%rdi,%rdx,8)
  de:	89 41 04             	mov    %eax,0x4(%rcx)
  e1:	89 01                	mov    %eax,(%rcx)
  e3:	b8 01 00 00 00       	mov    $0x1,%eax
  e8:	89 77 0c             	mov    %esi,0xc(%rdi)
  eb:	89 77 08             	mov    %esi,0x8(%rdi)
  ee:	c3                   	retq   
  ef:	90                   	nop

00000000000000f0 <dchain_impl_get_oldest_index>:
  f0:	8b 57 04             	mov    0x4(%rdi),%edx
  f3:	39 17                	cmp    %edx,(%rdi)
  f5:	75 09                	jne    100 <dchain_impl_get_oldest_index+0x10>
  f7:	31 c0                	xor    %eax,%eax
  f9:	85 d2                	test   %edx,%edx
  fb:	75 03                	jne    100 <dchain_impl_get_oldest_index+0x10>
  fd:	f3 c3                	repz retq 
  ff:	90                   	nop
 100:	83 ea 02             	sub    $0x2,%edx
 103:	b8 01 00 00 00       	mov    $0x1,%eax
 108:	89 16                	mov    %edx,(%rsi)
 10a:	c3                   	retq   
 10b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000110 <dchain_impl_rejuvenate_index>:
 110:	83 c6 02             	add    $0x2,%esi
 113:	48 63 c6             	movslq %esi,%rax
 116:	48 8d 14 c7          	lea    (%rdi,%rax,8),%rdx
 11a:	48 63 42 04          	movslq 0x4(%rdx),%rax
 11e:	8b 0a                	mov    (%rdx),%ecx
 120:	39 c8                	cmp    %ecx,%eax
 122:	74 2c                	je     150 <dchain_impl_rejuvenate_index+0x40>
 124:	4c 63 c1             	movslq %ecx,%r8
 127:	42 89 44 c7 04       	mov    %eax,0x4(%rdi,%r8,8)
 12c:	89 0c c7             	mov    %ecx,(%rdi,%rax,8)
 12f:	48 63 07             	movslq (%rdi),%rax
 132:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%rdx)
 139:	89 02                	mov    %eax,(%rdx)
 13b:	89 74 c7 04          	mov    %esi,0x4(%rdi,%rax,8)
 13f:	b8 01 00 00 00       	mov    $0x1,%eax
 144:	89 37                	mov    %esi,(%rdi)
 146:	c3                   	retq   
 147:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 14e:	00 00 
 150:	85 c0                	test   %eax,%eax
 152:	0f 94 c0             	sete   %al
 155:	0f b6 c0             	movzbl %al,%eax
 158:	c3                   	retq   
