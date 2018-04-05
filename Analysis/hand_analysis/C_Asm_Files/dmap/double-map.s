
double-map.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <dmap_allocate>:
   0:	41 57                	push   %r15
   2:	41 56                	push   %r14
   4:	45 89 c6             	mov    %r8d,%r14d
   7:	41 55                	push   %r13
   9:	41 54                	push   %r12
   b:	45 31 ed             	xor    %r13d,%r13d
   e:	55                   	push   %rbp
   f:	53                   	push   %rbx
  10:	48 83 ec 78          	sub    $0x78,%rsp
  14:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  1b:	00 
  1c:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
  21:	bf b0 00 00 00       	mov    $0xb0,%edi
  26:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
  2b:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
  30:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
  35:	44 89 44 24 54       	mov    %r8d,0x54(%rsp)
  3a:	48 8b 00             	mov    (%rax),%rax
  3d:	4c 89 4c 24 58       	mov    %r9,0x58(%rsp)
  42:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  47:	e8 00 00 00 00       	callq  4c <dmap_allocate+0x4c>
  4c:	48 85 c0             	test   %rax,%rax
  4f:	0f 84 54 02 00 00    	je     2a9 <dmap_allocate+0x2a9>
  55:	8b bc 24 c8 00 00 00 	mov    0xc8(%rsp),%edi
  5c:	48 89 c3             	mov    %rax,%rbx
  5f:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  66:	00 
  67:	41 0f af fe          	imul   %r14d,%edi
  6b:	48 89 18             	mov    %rbx,(%rax)
  6e:	48 63 ff             	movslq %edi,%rdi
  71:	e8 00 00 00 00       	callq  76 <dmap_allocate+0x76>
  76:	48 85 c0             	test   %rax,%rax
  79:	49 89 c4             	mov    %rax,%r12
  7c:	0f 84 58 02 00 00    	je     2da <dmap_allocate+0x2da>
  82:	4c 63 bc 24 d0 00 00 	movslq 0xd0(%rsp),%r15
  89:	00 
  8a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  8e:	4a 8d 2c bd 00 00 00 	lea    0x0(,%r15,4),%rbp
  95:	00 
  96:	48 89 ef             	mov    %rbp,%rdi
  99:	e8 00 00 00 00       	callq  9e <dmap_allocate+0x9e>
  9e:	48 85 c0             	test   %rax,%rax
  a1:	49 89 c6             	mov    %rax,%r14
  a4:	0f 84 28 02 00 00    	je     2d2 <dmap_allocate+0x2d2>
  aa:	49 c1 e7 03          	shl    $0x3,%r15
  ae:	48 89 43 20          	mov    %rax,0x20(%rbx)
  b2:	4c 89 ff             	mov    %r15,%rdi
  b5:	e8 00 00 00 00       	callq  ba <dmap_allocate+0xba>
  ba:	48 85 c0             	test   %rax,%rax
  bd:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  c2:	0f 84 02 02 00 00    	je     2ca <dmap_allocate+0x2ca>
  c8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  cd:	48 89 ef             	mov    %rbp,%rdi
  d0:	48 89 43 28          	mov    %rax,0x28(%rbx)
  d4:	e8 00 00 00 00       	callq  d9 <dmap_allocate+0xd9>
  d9:	48 85 c0             	test   %rax,%rax
  dc:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  e1:	0f 84 d9 01 00 00    	je     2c0 <dmap_allocate+0x2c0>
  e7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  ec:	48 89 ef             	mov    %rbp,%rdi
  ef:	48 89 43 30          	mov    %rax,0x30(%rbx)
  f3:	e8 00 00 00 00       	callq  f8 <dmap_allocate+0xf8>
  f8:	48 85 c0             	test   %rax,%rax
  fb:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
 100:	0f 84 10 02 00 00    	je     316 <dmap_allocate+0x316>
 106:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
 10b:	48 89 ef             	mov    %rbp,%rdi
 10e:	48 89 43 38          	mov    %rax,0x38(%rbx)
 112:	e8 00 00 00 00       	callq  117 <dmap_allocate+0x117>
 117:	48 85 c0             	test   %rax,%rax
 11a:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 11f:	0f 84 e7 01 00 00    	je     30c <dmap_allocate+0x30c>
 125:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
 12a:	48 89 ef             	mov    %rbp,%rdi
 12d:	48 89 43 40          	mov    %rax,0x40(%rbx)
 131:	e8 00 00 00 00       	callq  136 <dmap_allocate+0x136>
 136:	48 85 c0             	test   %rax,%rax
 139:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
 13e:	0f 84 0e 02 00 00    	je     352 <dmap_allocate+0x352>
 144:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
 149:	4c 89 ff             	mov    %r15,%rdi
 14c:	48 89 43 58          	mov    %rax,0x58(%rbx)
 150:	e8 00 00 00 00       	callq  155 <dmap_allocate+0x155>
 155:	48 85 c0             	test   %rax,%rax
 158:	49 89 c7             	mov    %rax,%r15
 15b:	0f 84 97 01 00 00    	je     2f8 <dmap_allocate+0x2f8>
 161:	48 89 43 60          	mov    %rax,0x60(%rbx)
 165:	48 89 ef             	mov    %rbp,%rdi
 168:	e8 00 00 00 00       	callq  16d <dmap_allocate+0x16d>
 16d:	48 85 c0             	test   %rax,%rax
 170:	49 89 c5             	mov    %rax,%r13
 173:	0f 84 c7 01 00 00    	je     340 <dmap_allocate+0x340>
 179:	48 89 43 68          	mov    %rax,0x68(%rbx)
 17d:	48 89 ef             	mov    %rbp,%rdi
 180:	e8 00 00 00 00       	callq  185 <dmap_allocate+0x185>
 185:	48 85 c0             	test   %rax,%rax
 188:	0f 84 2a 02 00 00    	je     3b8 <dmap_allocate+0x3b8>
 18e:	48 89 43 78          	mov    %rax,0x78(%rbx)
 192:	48 89 ef             	mov    %rbp,%rdi
 195:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
 19a:	e8 00 00 00 00       	callq  19f <dmap_allocate+0x19f>
 19f:	48 85 c0             	test   %rax,%rax
 1a2:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
 1a7:	0f 84 03 02 00 00    	je     3b0 <dmap_allocate+0x3b0>
 1ad:	48 89 43 70          	mov    %rax,0x70(%rbx)
 1b1:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
 1b6:	48 83 ec 08          	sub    $0x8,%rsp
 1ba:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
 1bf:	4c 89 f7             	mov    %r14,%rdi
 1c2:	41 bd 01 00 00 00    	mov    $0x1,%r13d
 1c8:	48 89 43 50          	mov    %rax,0x50(%rbx)
 1cc:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
 1d1:	48 89 73 48          	mov    %rsi,0x48(%rbx)
 1d5:	48 89 83 80 00 00 00 	mov    %rax,0x80(%rbx)
 1dc:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
 1e1:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
 1e8:	8b 44 24 5c          	mov    0x5c(%rsp),%eax
 1ec:	89 03                	mov    %eax,(%rbx)
 1ee:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
 1f3:	48 89 43 08          	mov    %rax,0x8(%rbx)
 1f7:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
 1fe:	00 
 1ff:	48 89 43 10          	mov    %rax,0x10(%rbx)
 203:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
 20a:	00 
 20b:	48 89 83 90 00 00 00 	mov    %rax,0x90(%rbx)
 212:	48 8b 84 24 c8 00 00 	mov    0xc8(%rsp),%rax
 219:	00 
 21a:	48 89 83 98 00 00 00 	mov    %rax,0x98(%rbx)
 221:	8b 84 24 d0 00 00 00 	mov    0xd0(%rsp),%eax
 228:	89 83 a4 00 00 00    	mov    %eax,0xa4(%rbx)
 22e:	8b 84 24 d8 00 00 00 	mov    0xd8(%rsp),%eax
 235:	89 83 a8 00 00 00    	mov    %eax,0xa8(%rbx)
 23b:	8b 84 24 d8 00 00 00 	mov    0xd8(%rsp),%eax
 242:	50                   	push   %rax
 243:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
 248:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
 24d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
 252:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
 257:	e8 00 00 00 00       	callq  25c <dmap_allocate+0x25c>
 25c:	48 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%rax
 263:	00 
 264:	48 8b 00             	mov    (%rax),%rax
 267:	44 8b 80 a8 00 00 00 	mov    0xa8(%rax),%r8d
 26e:	48 8b 50 60          	mov    0x60(%rax),%rdx
 272:	48 8b 48 68          	mov    0x68(%rax),%rcx
 276:	48 8b b0 80 00 00 00 	mov    0x80(%rax),%rsi
 27d:	48 8b 78 58          	mov    0x58(%rax),%rdi
 281:	4c 8b 48 78          	mov    0x78(%rax),%r9
 285:	44 89 04 24          	mov    %r8d,(%rsp)
 289:	4c 8b 40 70          	mov    0x70(%rax),%r8
 28d:	e8 00 00 00 00       	callq  292 <dmap_allocate+0x292>
 292:	48 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%rax
 299:	00 
 29a:	48 8b 00             	mov    (%rax),%rax
 29d:	c7 80 a0 00 00 00 00 	movl   $0x0,0xa0(%rax)
 2a4:	00 00 00 
 2a7:	58                   	pop    %rax
 2a8:	5a                   	pop    %rdx
 2a9:	48 83 c4 78          	add    $0x78,%rsp
 2ad:	44 89 e8             	mov    %r13d,%eax
 2b0:	5b                   	pop    %rbx
 2b1:	5d                   	pop    %rbp
 2b2:	41 5c                	pop    %r12
 2b4:	41 5d                	pop    %r13
 2b6:	41 5e                	pop    %r14
 2b8:	41 5f                	pop    %r15
 2ba:	c3                   	retq   
 2bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 2c0:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
 2c5:	e8 00 00 00 00       	callq  2ca <dmap_allocate+0x2ca>
 2ca:	4c 89 f7             	mov    %r14,%rdi
 2cd:	e8 00 00 00 00       	callq  2d2 <dmap_allocate+0x2d2>
 2d2:	4c 89 e7             	mov    %r12,%rdi
 2d5:	e8 00 00 00 00       	callq  2da <dmap_allocate+0x2da>
 2da:	48 89 df             	mov    %rbx,%rdi
 2dd:	e8 00 00 00 00       	callq  2e2 <dmap_allocate+0x2e2>
 2e2:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
 2e9:	00 
 2ea:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 2ef:	48 89 08             	mov    %rcx,(%rax)
 2f2:	eb b5                	jmp    2a9 <dmap_allocate+0x2a9>
 2f4:	0f 1f 40 00          	nopl   0x0(%rax)
 2f8:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
 2fd:	e8 00 00 00 00       	callq  302 <dmap_allocate+0x302>
 302:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
 307:	e8 00 00 00 00       	callq  30c <dmap_allocate+0x30c>
 30c:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
 311:	e8 00 00 00 00       	callq  316 <dmap_allocate+0x316>
 316:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
 31b:	e8 00 00 00 00       	callq  320 <dmap_allocate+0x320>
 320:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
 325:	e8 00 00 00 00       	callq  32a <dmap_allocate+0x32a>
 32a:	4c 89 f7             	mov    %r14,%rdi
 32d:	e8 00 00 00 00       	callq  332 <dmap_allocate+0x332>
 332:	4c 89 e7             	mov    %r12,%rdi
 335:	e8 00 00 00 00       	callq  33a <dmap_allocate+0x33a>
 33a:	eb 9e                	jmp    2da <dmap_allocate+0x2da>
 33c:	0f 1f 40 00          	nopl   0x0(%rax)
 340:	4c 89 ff             	mov    %r15,%rdi
 343:	e8 00 00 00 00       	callq  348 <dmap_allocate+0x348>
 348:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
 34d:	e8 00 00 00 00       	callq  352 <dmap_allocate+0x352>
 352:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
 357:	e8 00 00 00 00       	callq  35c <dmap_allocate+0x35c>
 35c:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
 361:	e8 00 00 00 00       	callq  366 <dmap_allocate+0x366>
 366:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
 36b:	e8 00 00 00 00       	callq  370 <dmap_allocate+0x370>
 370:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
 375:	e8 00 00 00 00       	callq  37a <dmap_allocate+0x37a>
 37a:	4c 89 f7             	mov    %r14,%rdi
 37d:	e8 00 00 00 00       	callq  382 <dmap_allocate+0x382>
 382:	4c 89 e7             	mov    %r12,%rdi
 385:	e8 00 00 00 00       	callq  38a <dmap_allocate+0x38a>
 38a:	48 89 df             	mov    %rbx,%rdi
 38d:	e8 00 00 00 00       	callq  392 <dmap_allocate+0x392>
 392:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
 399:	00 
 39a:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
 39f:	48 89 30             	mov    %rsi,(%rax)
 3a2:	e9 02 ff ff ff       	jmpq   2a9 <dmap_allocate+0x2a9>
 3a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 3ae:	00 00 
 3b0:	48 89 d7             	mov    %rdx,%rdi
 3b3:	e8 00 00 00 00       	callq  3b8 <dmap_allocate+0x3b8>
 3b8:	4c 89 ef             	mov    %r13,%rdi
 3bb:	45 31 ed             	xor    %r13d,%r13d
 3be:	e8 00 00 00 00       	callq  3c3 <dmap_allocate+0x3c3>
 3c3:	4c 89 ff             	mov    %r15,%rdi
 3c6:	e8 00 00 00 00       	callq  3cb <dmap_allocate+0x3cb>
 3cb:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
 3d0:	e8 00 00 00 00       	callq  3d5 <dmap_allocate+0x3d5>
 3d5:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
 3da:	e8 00 00 00 00       	callq  3df <dmap_allocate+0x3df>
 3df:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
 3e4:	e8 00 00 00 00       	callq  3e9 <dmap_allocate+0x3e9>
 3e9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
 3ee:	e8 00 00 00 00       	callq  3f3 <dmap_allocate+0x3f3>
 3f3:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
 3f8:	e8 00 00 00 00       	callq  3fd <dmap_allocate+0x3fd>
 3fd:	4c 89 f7             	mov    %r14,%rdi
 400:	e8 00 00 00 00       	callq  405 <dmap_allocate+0x405>
 405:	4c 89 e7             	mov    %r12,%rdi
 408:	e8 00 00 00 00       	callq  40d <dmap_allocate+0x40d>
 40d:	48 89 df             	mov    %rbx,%rdi
 410:	e8 00 00 00 00       	callq  415 <dmap_allocate+0x415>
 415:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
 41c:	00 
 41d:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 422:	48 89 08             	mov    %rcx,(%rax)
 425:	e9 7f fe ff ff       	jmpq   2a9 <dmap_allocate+0x2a9>
 42a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000430 <dmap_get_a>:
 430:	41 54                	push   %r12
 432:	55                   	push   %rbp
 433:	49 89 d4             	mov    %rdx,%r12
 436:	53                   	push   %rbx
 437:	48 89 fb             	mov    %rdi,%rbx
 43a:	48 89 f5             	mov    %rsi,%rbp
 43d:	48 89 f7             	mov    %rsi,%rdi
 440:	ff 53 50             	callq  *0x50(%rbx)
 443:	44 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8d
 44a:	48 8b 4b 38          	mov    0x38(%rbx),%rcx
 44e:	49 89 e9             	mov    %rbp,%r9
 451:	48 8b 53 30          	mov    0x30(%rbx),%rdx
 455:	48 8b 73 28          	mov    0x28(%rbx),%rsi
 459:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
 45d:	41 50                	push   %r8
 45f:	4c 8b 43 40          	mov    0x40(%rbx),%r8
 463:	41 54                	push   %r12
 465:	50                   	push   %rax
 466:	ff 73 48             	pushq  0x48(%rbx)
 469:	e8 00 00 00 00       	callq  46e <dmap_get_a+0x3e>
 46e:	48 83 c4 20          	add    $0x20,%rsp
 472:	5b                   	pop    %rbx
 473:	5d                   	pop    %rbp
 474:	41 5c                	pop    %r12
 476:	c3                   	retq   
 477:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 47e:	00 00 

0000000000000480 <dmap_get_b>:
 480:	41 54                	push   %r12
 482:	55                   	push   %rbp
 483:	49 89 d4             	mov    %rdx,%r12
 486:	53                   	push   %rbx
 487:	48 89 fb             	mov    %rdi,%rbx
 48a:	48 89 f5             	mov    %rsi,%rbp
 48d:	48 89 f7             	mov    %rsi,%rdi
 490:	ff 93 88 00 00 00    	callq  *0x88(%rbx)
 496:	44 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8d
 49d:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
 4a1:	49 89 e9             	mov    %rbp,%r9
 4a4:	48 8b 53 68          	mov    0x68(%rbx),%rdx
 4a8:	48 8b 73 60          	mov    0x60(%rbx),%rsi
 4ac:	48 8b 7b 58          	mov    0x58(%rbx),%rdi
 4b0:	41 50                	push   %r8
 4b2:	4c 8b 43 78          	mov    0x78(%rbx),%r8
 4b6:	41 54                	push   %r12
 4b8:	50                   	push   %rax
 4b9:	ff b3 80 00 00 00    	pushq  0x80(%rbx)
 4bf:	e8 00 00 00 00       	callq  4c4 <dmap_get_b+0x44>
 4c4:	48 83 c4 20          	add    $0x20,%rsp
 4c8:	5b                   	pop    %rbx
 4c9:	5d                   	pop    %rbp
 4ca:	41 5c                	pop    %r12
 4cc:	c3                   	retq   
 4cd:	0f 1f 00             	nopl   (%rax)

00000000000004d0 <dmap_put>:
 4d0:	41 54                	push   %r12
 4d2:	55                   	push   %rbp
 4d3:	41 89 d4             	mov    %edx,%r12d
 4d6:	53                   	push   %rbx
 4d7:	48 89 fb             	mov    %rdi,%rbx
 4da:	48 83 ec 20          	sub    $0x20,%rsp
 4de:	8b 2f                	mov    (%rdi),%ebp
 4e0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 4e7:	00 00 
 4e9:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 4ee:	31 c0                	xor    %eax,%eax
 4f0:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 4f7:	00 00 
 4f9:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
 500:	00 00 
 502:	0f af ea             	imul   %edx,%ebp
 505:	48 63 ed             	movslq %ebp,%rbp
 508:	48 03 6f 18          	add    0x18(%rdi),%rbp
 50c:	48 89 ef             	mov    %rbp,%rdi
 50f:	ff 53 08             	callq  *0x8(%rbx)
 512:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
 517:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
 51c:	48 89 ef             	mov    %rbp,%rdi
 51f:	ff 93 90 00 00 00    	callq  *0x90(%rbx)
 525:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
 52a:	ff 53 50             	callq  *0x50(%rbx)
 52d:	44 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8d
 534:	48 83 ec 08          	sub    $0x8,%rsp
 538:	48 8b 4b 38          	mov    0x38(%rbx),%rcx
 53c:	48 8b 53 30          	mov    0x30(%rbx),%rdx
 540:	48 8b 73 28          	mov    0x28(%rbx),%rsi
 544:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
 548:	41 50                	push   %r8
 54a:	4c 8b 43 40          	mov    0x40(%rbx),%r8
 54e:	41 54                	push   %r12
 550:	50                   	push   %rax
 551:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
 556:	e8 00 00 00 00       	callq  55b <dmap_put+0x8b>
 55b:	48 83 c4 20          	add    $0x20,%rsp
 55f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
 564:	ff 93 88 00 00 00    	callq  *0x88(%rbx)
 56a:	44 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8d
 571:	48 83 ec 08          	sub    $0x8,%rsp
 575:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
 579:	48 8b 53 68          	mov    0x68(%rbx),%rdx
 57d:	48 8b 73 60          	mov    0x60(%rbx),%rsi
 581:	48 8b 7b 58          	mov    0x58(%rbx),%rdi
 585:	41 50                	push   %r8
 587:	4c 8b 43 78          	mov    0x78(%rbx),%r8
 58b:	41 54                	push   %r12
 58d:	50                   	push   %rax
 58e:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
 593:	e8 00 00 00 00       	callq  598 <dmap_put+0xc8>
 598:	48 83 c4 20          	add    $0x20,%rsp
 59c:	83 83 a0 00 00 00 01 	addl   $0x1,0xa0(%rbx)
 5a3:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
 5a8:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 5ad:	48 89 ef             	mov    %rbp,%rdi
 5b0:	ff 93 98 00 00 00    	callq  *0x98(%rbx)
 5b6:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 5bb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 5c2:	00 00 
 5c4:	75 0e                	jne    5d4 <dmap_put+0x104>
 5c6:	48 83 c4 20          	add    $0x20,%rsp
 5ca:	b8 01 00 00 00       	mov    $0x1,%eax
 5cf:	5b                   	pop    %rbx
 5d0:	5d                   	pop    %rbp
 5d1:	41 5c                	pop    %r12
 5d3:	c3                   	retq   
 5d4:	e8 00 00 00 00       	callq  5d9 <dmap_put+0x109>
 5d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000005e0 <dmap_get_value>:
 5e0:	0f af 37             	imul   (%rdi),%esi
 5e3:	48 8b 47 08          	mov    0x8(%rdi),%rax
 5e7:	48 63 f6             	movslq %esi,%rsi
 5ea:	48 03 77 18          	add    0x18(%rdi),%rsi
 5ee:	48 89 d7             	mov    %rdx,%rdi
 5f1:	ff e0                	retq
 5f3:	0f 1f 00             	nopl   (%rax)
 5f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5fd:	00 00 00 

0000000000000600 <dmap_erase>:
 600:	41 54                	push   %r12
 602:	55                   	push   %rbp
 603:	53                   	push   %rbx
 604:	48 89 fb             	mov    %rdi,%rbx
 607:	48 83 ec 30          	sub    $0x30,%rsp
 60b:	0f af 37             	imul   (%rdi),%esi
 60e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 615:	00 00 
 617:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 61c:	31 c0                	xor    %eax,%eax
 61e:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 625:	00 00 
 627:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
 62e:	00 00 
 630:	48 8d 54 24 18       	lea    0x18(%rsp),%rdx
 635:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
 63c:	00 00 
 63e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
 645:	00 00 
 647:	48 63 ee             	movslq %esi,%rbp
 64a:	48 03 6f 18          	add    0x18(%rdi),%rbp
 64e:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
 653:	48 89 ef             	mov    %rbp,%rdi
 656:	ff 93 90 00 00 00    	callq  *0x90(%rbx)
 65c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
 661:	ff 53 50             	callq  *0x50(%rbx)
 664:	48 83 ec 08          	sub    $0x8,%rsp
 668:	48 8b 4b 38          	mov    0x38(%rbx),%rcx
 66c:	48 8b 53 30          	mov    0x30(%rbx),%rdx
 670:	4c 8d 44 24 18       	lea    0x18(%rsp),%r8
 675:	48 8b 73 28          	mov    0x28(%rbx),%rsi
 679:	4c 8b 4b 48          	mov    0x48(%rbx),%r9
 67d:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
 681:	41 50                	push   %r8
 683:	44 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8d
 68a:	41 50                	push   %r8
 68c:	50                   	push   %rax
 68d:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
 692:	e8 00 00 00 00       	callq  697 <dmap_erase+0x97>
 697:	48 83 c4 20          	add    $0x20,%rsp
 69b:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
 6a0:	ff 93 88 00 00 00    	callq  *0x88(%rbx)
 6a6:	48 83 ec 08          	sub    $0x8,%rsp
 6aa:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
 6ae:	4c 8b 8b 80 00 00 00 	mov    0x80(%rbx),%r9
 6b5:	4c 8d 44 24 28       	lea    0x28(%rsp),%r8
 6ba:	48 8b 53 68          	mov    0x68(%rbx),%rdx
 6be:	48 8b 73 60          	mov    0x60(%rbx),%rsi
 6c2:	48 8b 7b 58          	mov    0x58(%rbx),%rdi
 6c6:	41 50                	push   %r8
 6c8:	44 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8d
 6cf:	41 50                	push   %r8
 6d1:	50                   	push   %rax
 6d2:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
 6d7:	e8 00 00 00 00       	callq  6dc <dmap_erase+0xdc>
 6dc:	48 83 c4 20          	add    $0x20,%rsp
 6e0:	4c 8b a3 98 00 00 00 	mov    0x98(%rbx),%r12
 6e7:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
 6ec:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 6f1:	48 89 ef             	mov    %rbp,%rdi
 6f4:	41 ff d4             	callq  *%r12
 6f7:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
 6fc:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 701:	48 89 ef             	mov    %rbp,%rdi
 704:	41 ff d4             	callq  *%r12
 707:	48 89 ef             	mov    %rbp,%rdi
 70a:	ff 53 10             	callq  *0x10(%rbx)
 70d:	83 ab a0 00 00 00 01 	subl   $0x1,0xa0(%rbx)
 714:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
 719:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 720:	00 00 
 722:	75 0e                	jne    732 <dmap_erase+0x132>
 724:	48 83 c4 30          	add    $0x30,%rsp
 728:	b8 01 00 00 00       	mov    $0x1,%eax
 72d:	5b                   	pop    %rbx
 72e:	5d                   	pop    %rbp
 72f:	41 5c                	pop    %r12
 731:	c3                   	retq   
 732:	e8 00 00 00 00       	callq  737 <dmap_erase+0x137>
 737:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 73e:	00 00 

0000000000000740 <dmap_size>:
 740:	8b 87 a0 00 00 00    	mov    0xa0(%rdi),%eax
 746:	c3                   	retq   
