vector.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <vector_allocate>:
   0:   41 57                   push   %r15
   2:   41 56                   push   %r14
   4:   45 31 f6                xor    %r14d,%r14d
   7:   41 55                   push   %r13
   9:   41 54                   push   %r12
   b:   49 89 d5                mov    %rdx,%r13
   e:   55                      push   %rbp
   f:   53                      push   %rbx
  10:   48 63 df                movslq %edi,%rbx
  13:   bf 10 00 00 00          mov    $0x10,%edi
  18:   89 f5                   mov    %esi,%ebp
  1a:   49 89 cc                mov    %rcx,%r12
  1d:   48 83 ec 18             sub    $0x18,%rsp
  21:   48 8b 01                mov    (%rcx),%rax
  24:   48 89 44 24 08          mov    %rax,0x8(%rsp)
  29:   e8 00 00 00 00          callq  2e <vector_allocate+0x2e>
  2e:   48 85 c0                test   %rax,%rax
  31:   74 5c                   je     8f <vector_allocate+0x8f>
  33:   89 df                   mov    %ebx,%edi
  35:   49 89 04 24             mov    %rax,(%r12)
  39:   49 89 c7                mov    %rax,%r15
  3c:   0f af fd                imul   %ebp,%edi
  3f:   48 63 ff                movslq %edi,%rdi
  42:   e8 00 00 00 00          callq  47 <vector_allocate+0x47>
  47:   48 85 c0                test   %rax,%rax
  4a:   74 55                   je     a1 <vector_allocate+0xa1>
  4c:   85 ed                   test   %ebp,%ebp
  4e:   49 89 07                mov    %rax,(%r15)
  51:   41 89 5f 08             mov    %ebx,0x8(%r15)
  55:   41 89 6f 0c             mov    %ebp,0xc(%r15)
  59:   7e 2e                   jle    89 <vector_allocate+0x89>
  5b:   48 89 c7                mov    %rax,%rdi
  5e:   45 31 ff                xor    %r15d,%r15d
  61:   45 31 f6                xor    %r14d,%r14d
  64:   eb 11                   jmp    77 <vector_allocate+0x77>
  66:   66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  6d:   00 00 00
  70:   49 8b 04 24             mov    (%r12),%rax
  74:   48 8b 38                mov    (%rax),%rdi
  77:   41 83 c6 01             add    $0x1,%r14d
  7b:   4c 01 ff                add    %r15,%rdi
  7e:   49 01 df                add    %rbx,%r15
  81:   41 ff d5                callq  *%r13
  84:   44 39 f5                cmp    %r14d,%ebp
  87:   75 e7                   jne    70 <vector_allocate+0x70>
  89:   41 be 01 00 00 00       mov    $0x1,%r14d
  8f:   48 83 c4 18             add    $0x18,%rsp
  93:   44 89 f0                mov    %r14d,%eax
  96:   5b                      pop    %rbx
  97:   5d                      pop    %rbp
  98:   41 5c                   pop    %r12
  9a:   41 5d                   pop    %r13
  9c:   41 5e                   pop    %r14
  9e:   41 5f                   pop    %r15
  a0:   c3                      retq
  a1:   4c 89 ff                mov    %r15,%rdi
  a4:   e8 00 00 00 00          callq  a9 <vector_allocate+0xa9>
  a9:   48 8b 44 24 08          mov    0x8(%rsp),%rax
  ae:   49 89 04 24             mov    %rax,(%r12)
  b2:   eb db                   jmp    8f <vector_allocate+0x8f>
  b4:   66 90                   xchg   %ax,%ax
  b6:   66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  bd:   00 00 00

00000000000000c0 <vector_borrow_full>:
  c0:   0f af 77 08             imul   0x8(%rdi),%esi
  c4:   48 63 f6                movslq %esi,%rsi
  c7:   48 03 37                add    (%rdi),%rsi
  ca:   48 89 32                mov    %rsi,(%rdx)
  cd:   c3                      retq
  ce:   66 90                   xchg   %ax,%ax

00000000000000d0 <vector_borrow_half>:
  d0:   0f af 77 08             imul   0x8(%rdi),%esi
  d4:   48 63 f6                movslq %esi,%rsi
  d7:   48 03 37                add    (%rdi),%rsi
  da:   48 89 32                mov    %rsi,(%rdx)
  dd:   c3                      retq
  de:   66 90                   xchg   %ax,%ax

00000000000000e0 <vector_return_full>:
  e0:   f3 c3                   repz retq
  e2:   0f 1f 40 00             nopl   0x0(%rax)
  e6:   66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  ed:   00 00 00

00000000000000f0 <vector_return_half>:
  f0:   f3 c3                   repz retq
