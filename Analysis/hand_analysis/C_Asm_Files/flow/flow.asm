0x400890 <int_key_eq>           movzwl (%rsi),%edx
0x400893 <int_key_eq+3>         xor    %eax,%eax
0x400895 <int_key_eq+5>         cmp    %dx,(%rdi)
0x400898 <int_key_eq+8>         je     0x4008a0 <int_key_eq+16>=
0x40089a <int_key_eq+10>        repz retq
0x40089c <int_key_eq+12>        nopl   0x0(%rax)
0x4008a0 <int_key_eq+16>        movzwl 0x2(%rsi),%ecx
0x4008a4 <int_key_eq+20>        cmp    %cx,0x2(%rdi)
0x4008a8 <int_key_eq+24>        jne    0x40089a <int_key_eq+10>
0x4008aa <int_key_eq+26>        mov    0x4(%rsi),%ecx
0x4008ad <int_key_eq+29>        cmp    %ecx,0x4(%rdi)
0x4008b0 <int_key_eq+32>        jne    0x40089a <int_key_eq+10>
0x4008b2 <int_key_eq+34>        mov    0x8(%rsi),%ecx
0x4008b5 <int_key_eq+37>        cmp    %ecx,0x8(%rdi)
0x4008b8 <int_key_eq+40>        jne    0x40089a <int_key_eq+10>
0x4008ba <int_key_eq+42>        movzwl 0xc(%rsi),%eax
0x4008be <int_key_eq+46>        cmp    %ax,0xc(%rdi)
0x4008c2 <int_key_eq+50>        sete   %al 
0x4008c5 <int_key_eq+53>        movzbl%al,%eax                                                                          
0x4008c8 <int_key_eq+56>        retq
