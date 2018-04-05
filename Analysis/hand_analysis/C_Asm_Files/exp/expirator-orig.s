	.file	"expirator.c"
	.text
.Ltext0:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.text
	.globl	expire_items
	.type	expire_items, @function
expire_items:
.LFB0:
	.file 1 "lib/expirator.c"
	.loc 1 48 0
	.cfi_startproc
.LVL0:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r12
	movl	%edx, %ebp
	.loc 1 49 0
	xorl	%ebx, %ebx
	.loc 1 48 0
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 48 0
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LVL1:
	.loc 1 50 0
	movl	$-1, 4(%rsp)
	.loc 1 56 0
	jmp	.L2
.LVL2:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 84 0
	movl	4(%rsp), %esi
	movq	%r13, %rdi
	.loc 1 87 0
	addl	$1, %ebx
.LVL3:
	.loc 1 84 0
	call	dmap_erase
.LVL4:
.L2:
	.loc 1 56 0
	leaq	4(%rsp), %rsi
	movl	%ebp, %edx
	movq	%r12, %rdi
	call	dchain_expire_one_index
.LVL5:
	testl	%eax, %eax
	jne	.L3
	.loc 1 106 0
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%ebx, %eax
	jne	.L7
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL6:
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL7:
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL8:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL9:
	ret
.LVL10:
.L7:
	.cfi_restore_state
	call	__stack_chk_fail
.LVL11:
	.cfi_endproc
.LFE0:
	.size	expire_items, .-expire_items
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 2 "lib/containers/double-map.h"
	.file 3 "lib/containers/double-chain.h"
	.file 4 "/usr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x160
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF16
	.byte	0xc
	.long	.LASF17
	.long	.LASF18
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0x33
	.long	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x5
	.long	.LASF20
	.byte	0x1
	.byte	0x1d
	.long	0x3b
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x12c
	.uleb128 0x6
	.long	.LASF8
	.byte	0x1
	.byte	0x1d
	.long	0x131
	.long	.LLST0
	.uleb128 0x7
	.string	"map"
	.byte	0x1
	.byte	0x1e
	.long	0x13c
	.long	.LLST1
	.uleb128 0x6
	.long	.LASF9
	.byte	0x1
	.byte	0x1f
	.long	0x57
	.long	.LLST2
	.uleb128 0x8
	.long	.LASF10
	.byte	0x1
	.byte	0x31
	.long	0x3b
	.long	.LLST3
	.uleb128 0x9
	.long	.LASF11
	.byte	0x1
	.byte	0x32
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.quad	.LVL4
	.long	0x142
	.long	0xfa
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.quad	.LVL5
	.long	0x14e
	.long	0x11e
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL11
	.long	0x15a
	.byte	0
	.uleb128 0xd
	.long	.LASF12
	.uleb128 0xe
	.byte	0x8
	.long	0x12c
	.uleb128 0xd
	.long	.LASF13
	.uleb128 0xe
	.byte	0x8
	.long	0x137
	.uleb128 0xf
	.long	.LASF14
	.long	.LASF14
	.byte	0x2
	.value	0x2bf
	.uleb128 0xf
	.long	.LASF15
	.long	.LASF15
	.byte	0x3
	.value	0x19f
	.uleb128 0x10
	.long	.LASF21
	.long	.LASF21
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL2-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL7-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL6-.Ltext0
	.quad	.LVL11-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL11-1-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"chain"
.LASF10:
	.string	"count"
.LASF16:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF20:
	.string	"expire_items"
.LASF14:
	.string	"dmap_erase"
.LASF3:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF17:
	.string	"lib/expirator.c"
.LASF12:
	.string	"DoubleChain"
.LASF21:
	.string	"__stack_chk_fail"
.LASF5:
	.string	"unsigned int"
.LASF7:
	.string	"char"
.LASF9:
	.string	"time"
.LASF15:
	.string	"dchain_expire_one_index"
.LASF11:
	.string	"index"
.LASF1:
	.string	"short int"
.LASF19:
	.string	"uint32_t"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"/home/rishabh/vignat/nf"
.LASF13:
	.string	"DoubleMap"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
