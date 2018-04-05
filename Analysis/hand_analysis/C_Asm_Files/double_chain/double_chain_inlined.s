dchain_allocate_new_index:success
  a0:   41 54                   push   %r12
  a2:   55                      push   %rbp
  a3:   41 89 d4                mov    %edx,%r12d
  a6:   53                      push   %rbx
  a7:   48 89 fb                mov    %rdi,%rbx
  aa:   48 8b 3f                mov    (%rdi),%rdi
  ad:   48 89 f5                mov    %rsi,%rbp
  b0:   e8 00 00 00 00          callq  b5 <dchain_allocate_new_index+0x15>
  60:   8b 47 0c                mov    0xc(%rdi),%eax
  63:   83 f8 01                cmp    $0x1,%eax
  66:   74 38                   je     a0 <dchain_impl_allocate_new_index+0x40>
  68:   48 63 d0                movslq %eax,%rdx
  6b:   48 8d 14 d7             lea    (%rdi,%rdx,8),%rdx
  6f:   8b 4a 04                mov    0x4(%rdx),%ecx
  72:   89 4f 0c                mov    %ecx,0xc(%rdi)
  75:   89 4f 08                mov    %ecx,0x8(%rdi)
  78:   8b 0f                   mov    (%rdi),%ecx
  7a:   c7 42 04 00 00 00 00    movl   $0x0,0x4(%rdx)
  81:   89 0a                   mov    %ecx,(%rdx)
  83:   48 63 17                movslq (%rdi),%rdx
  86:   89 44 d7 04             mov    %eax,0x4(%rdi,%rdx,8)
  8a:   89 07                   mov    %eax,(%rdi)
  8c:   83 e8 02                sub    $0x2,%eax
  8f:   89 06                   mov    %eax,(%rsi)
  91:   b8 01 00 00 00          mov    $0x1,%eax
  96:   c3                      retq
  b5:   85 c0                   test   %eax,%eax
  b7:   74 0c                   je     c5 <dchain_allocate_new_index+0x25>
  b9:   48 63 4d 00             movslq 0x0(%rbp),%rcx
  bd:   48 8b 53 08             mov    0x8(%rbx),%rdx
  c1:   44 89 24 8a             mov    %r12d,(%rdx,%rcx,4)
  c5:   5b                      pop    %rbx
  c6:   5d                      pop    %rbp
  c7:   41 5c                   pop    %r12
  c9:   c3                      retq

dchain_allocate_new_index:failure
  a0:   41 54                   push   %r12
  a2:   55                      push   %rbp
  a3:   41 89 d4                mov    %edx,%r12d
  a6:   53                      push   %rbx
  a7:   48 89 fb                mov    %rdi,%rbx
  aa:   48 8b 3f                mov    (%rdi),%rdi
  ad:   48 89 f5                mov    %rsi,%rbp
  b0:   e8 00 00 00 00          callq  b5 <dchain_allocate_new_index+0x15>
  60:   8b 47 0c                mov    0xc(%rdi),%eax
  63:   83 f8 01                cmp    $0x1,%eax
  66:   74 38                   je     a0 <dchain_impl_allocate_new_index+0x40>
  a0:   31 c0                   xor    %eax,%eax
  a2:   c3                      retq
  b5:   85 c0                   test   %eax,%eax
  b7:   74 0c                   je     c5 <dchain_allocate_new_index+0x25>
  c5:   5b                      pop    %rbx
  c6:   5d                      pop    %rbp
  c7:   41 5c                   pop    %r12
  c9:   c3                      retq

dchain_rejuvenate_index:success
  d0:   41 54                   push   %r12
  d2:   55                      push   %rbp
  d3:   48 89 fd                mov    %rdi,%rbp
  d6:   53                      push   %rbx
  d7:   48 8b 3f                mov    (%rdi),%rdi
  da:   48 63 de                movslq %esi,%rbx
  dd:   89 de                   mov    %ebx,%esi
  df:   41 89 d4                mov    %edx,%r12d
  d2:   e8 00 00 00 00          callq  e7 <dchain_rejuvenate_index+0x17>
 110:   83 c6 02                add    $0x2,%esi
 113:   48 63 c6                movslq %esi,%rax
 116:   48 8d 14 c7             lea    (%rdi,%rax,8),%rdx
 11a:   48 63 42 04             movslq 0x4(%rdx),%rax
 11e:   8b 0a                   mov    (%rdx),%ecx
 120:   39 c8                   cmp    %ecx,%eax
 122:   74 2c                   je     150 <dchain_impl_rejuvenate_index+0x40>
 124:   4c 63 c1                movslq %ecx,%r8
 127:   42 89 44 c7 04          mov    %eax,0x4(%rdi,%r8,8)
 12c:   89 0c c7                mov    %ecx,(%rdi,%rax,8)
 12f:   48 63 07                movslq (%rdi),%rax
 132:   c7 42 04 00 00 00 00    movl   $0x0,0x4(%rdx)
 139:   89 02                   mov    %eax,(%rdx)
 13b:   89 74 c7 04             mov    %esi,0x4(%rdi,%rax,8)
 13f:   b8 01 00 00 00          mov    $0x1,%eax
 144:   89 37                   mov    %esi,(%rdi)
 146:   c3                      retq
  e7:   85 c0                   test   %eax,%eax
  e9:   74 08                   je     f3 <dchain_rejuvenate_index+0x23>
  eb:   48 8b 55 08             mov    0x8(%rbp),%rdx
  ef:   44 89 24 9a             mov    %r12d,(%rdx,%rbx,4)
  f3:   5b                      pop    %rbx
  f4:   5d                      pop    %rbp
  f5:   41 5c                   pop    %r12
  f7:   c3                      retq

dchain_rejuvenate_index:failure
 d0:   41 54                   push   %r12
  d2:   55                      push   %rbp
  d3:   48 89 fd                mov    %rdi,%rbp
  d6:   53                      push   %rbx
  d7:   48 8b 3f                mov    (%rdi),%rdi
  da:   48 63 de                movslq %esi,%rbx
  dd:   89 de                   mov    %ebx,%esi
  df:   41 89 d4                mov    %edx,%r12d
  d2:   e8 00 00 00 00          callq  e7 <dchain_rejuvenate_index+0x17>
 110:   83 c6 02                add    $0x2,%esi
 113:   48 63 c6                movslq %esi,%rax
 116:   48 8d 14 c7             lea    (%rdi,%rax,8),%rdx
 11a:   48 63 42 04             movslq 0x4(%rdx),%rax
 11e:   8b 0a                   mov    (%rdx),%ecx
 120:   39 c8                   cmp    %ecx,%eax
 122:   74 2c                   je     150 <dchain_impl_rejuvenate_index+0x40>
 150:   85 c0                   test   %eax,%eax
 152:   0f 94 c0                sete   %al
 155:   0f b6 c0                movzbl %al,%eax
 158:   c3                      retq
  e7:   85 c0                   test   %eax,%eax
  e9:   74 08                   je     f3 <dchain_rejuvenate_index+0x23>
  f3:   5b                      pop    %rbx
  f4:   5d                      pop    %rbp
  f5:   41 5c                   pop    %r12
  f7:   c3                      retq

dchain_expire_one_index:success
 100:   41 54                   push   %r12
 102:   55                      push   %rbp
 103:   41 89 d4                mov    %edx,%r12d
 106:   53                      push   %rbx
 107:   48 89 fb                mov    %rdi,%rbx
 10a:   48 8b 3f                mov    (%rdi),%rdi
 10d:   48 89 f5                mov    %rsi,%rbp
 110:   e8 00 00 00 00          callq  115 <dchain_expire_one_index+0x15>
  f0:   8b 57 04                mov    0x4(%rdi),%edx
  f3:   39 17                   cmp    %edx,(%rdi)
  f5:   75 09                   jne    100 <dchain_impl_get_oldest_index+0x10>
  f7:   31 c0                   xor    %eax,%eax
  f9:   85 d2                   test   %edx,%edx
  fb:   75 03                   jne    100 <dchain_impl_get_oldest_index+0x10>
 100:   83 ea 02                sub    $0x2,%edx
 103:   b8 01 00 00 00          mov    $0x1,%eax
 108:   89 16                   mov    %edx,(%rsi)
 10a:   c3                      retq
 115:   85 c0                   test   %eax,%eax
 117:   74 11                   je     12a <dchain_expire_one_index+0x2a>
 119:   48 63 55 00             movslq 0x0(%rbp),%rdx
 11d:   48 8b 43 08             mov    0x8(%rbx),%rax
 121:   44 39 24 90             cmp    %r12d,(%rax,%rdx,4)
 125:   48 89 d6                mov    %rdx,%rsi
 128:   72 0e                   jb     138 <dchain_expire_one_index+0x38>
 138:   48 8b 3b                mov    (%rbx),%rdi
 13b:   5b                      pop    %rbx
 13c:   5d                      pop    %rbp
 13d:   41 5c                   pop    %r12
 13f:   e9 00 00 00 00          jmpq   144 <dchain_expire_one_index+0x44>
  b0:   83 c6 02                add    $0x2,%esi
  b3:   48 63 c6                movslq %esi,%rax
  b6:   48 8d 0c c7             lea    (%rdi,%rax,8),%rcx
  ba:   44 8b 01                mov    (%rcx),%r8d
  bd:   48 63 51 04             movslq 0x4(%rcx),%rdx
  c1:   45 85 c0                test   %r8d,%r8d
  c4:   74 0a                   je     d0 <dchain_impl_free_index+0x20>
  c6:   31 c0                   xor    %eax,%eax
  c8:   41 39 d0                cmp    %edx,%r8d
  cb:   75 03                   jne    d0 <dchain_impl_free_index+0x20>
  d0:   49 63 c0                movslq %r8d,%rax
  d3:   89 54 c7 04             mov    %edx,0x4(%rdi,%rax,8)
  d7:   8b 47 0c                mov    0xc(%rdi),%eax
  da:   44 89 04 d7             mov    %r8d,(%rdi,%rdx,8)
  de:   89 41 04                mov    %eax,0x4(%rcx)
  e1:   89 01                   mov    %eax,(%rcx)
  e3:   b8 01 00 00 00          mov    $0x1,%eax
  e8:   89 77 0c                mov    %esi,0xc(%rdi)
  eb:   89 77 08                mov    %esi,0x8(%rdi)
  ee:   c3                      retq

dchain_expire_one_index:failure-Empty list 
 100:   41 54                   push   %r12
 102:   55                      push   %rbp
 103:   41 89 d4                mov    %edx,%r12d
 106:   53                      push   %rbx
 107:   48 89 fb                mov    %rdi,%rbx
 10a:   48 8b 3f                mov    (%rdi),%rdi
 10d:   48 89 f5                mov    %rsi,%rbp
 110:   e8 00 00 00 00          callq  115 <dchain_expire_one_index+0x15>
  f0:   8b 57 04                mov    0x4(%rdi),%edx
  f3:   39 17                   cmp    %edx,(%rdi)
  f5:   75 09                   jne    100 <dchain_impl_get_oldest_index+0x10>
  f7:   31 c0                   xor    %eax,%eax
  f9:   85 d2                   test   %edx,%edx
  fb:   75 03                   jne    100 <dchain_impl_get_oldest_index+0x10>
  fd:   f3 c3                   repz retq
 115:   85 c0                   test   %eax,%eax
 117:   74 11                   je     12a <dchain_expire_one_index+0x2a>
 12a:   5b                      pop    %rbx
 12b:   31 c0                   xor    %eax,%eax
 12d:   5d                      pop    %rbp
 12e:   41 5c                   pop    %r12
 130:   c3                      retq

dchain_expire_one_index:failure-Fresh_flows
 100:   41 54                   push   %r12
 102:   55                      push   %rbp
 103:   41 89 d4                mov    %edx,%r12d
 106:   53                      push   %rbx
 107:   48 89 fb                mov    %rdi,%rbx
 10a:   48 8b 3f                mov    (%rdi),%rdi
 10d:   48 89 f5                mov    %rsi,%rbp
 110:   e8 00 00 00 00          callq  115 <dchain_expire_one_index+0x15>
  f0:   8b 57 04                mov    0x4(%rdi),%edx
  f3:   39 17                   cmp    %edx,(%rdi)
  f5:   75 09                   jne    100 <dchain_impl_get_oldest_index+0x10>
  f7:   31 c0                   xor    %eax,%eax
  f9:   85 d2                   test   %edx,%edx
  fb:   75 03                   jne    100 <dchain_impl_get_oldest_index+0x10>
 100:   83 ea 02                sub    $0x2,%edx
 103:   b8 01 00 00 00          mov    $0x1,%eax
 108:   89 16                   mov    %edx,(%rsi)
 10a:   c3                      retq
 119:   48 63 55 00             movslq 0x0(%rbp),%rdx
 11d:   48 8b 43 08             mov    0x8(%rbx),%rax
 121:   44 39 24 90             cmp    %r12d,(%rax,%rdx,4)
 125:   48 89 d6                mov    %rdx,%rsi
 128:   72 0e                   jb     138 <dchain_expire_one_index+0x38>
 12a:   5b                      pop    %rbx
 12b:   31 c0                   xor    %eax,%eax
 12d:   5d                      pop    %rbp
 12e:   41 5c                   pop    %r12
 130:   c3                      retq
