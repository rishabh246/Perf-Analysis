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
