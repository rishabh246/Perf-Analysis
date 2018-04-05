	.file	"double-map.c"
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
	.globl	dmap_allocate
	.type	dmap_allocate, @function
dmap_allocate:
.LFB37:
	.file 1 "lib/containers/double-map.c"
	.loc 1 302 0
	.cfi_startproc
.LVL0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r8d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	.loc 1 308 0
	xorl	%r13d, %r13d
	.loc 1 302 0
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.loc 1 306 0
	movq	216(%rsp), %rax
	.loc 1 302 0
	movq	%rdi, 48(%rsp)
	.loc 1 307 0
	movl	$176, %edi
.LVL1:
	.loc 1 302 0
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movl	%r8d, 84(%rsp)
	.loc 1 306 0
	movq	(%rax), %rax
	.loc 1 302 0
	movq	%r9, 88(%rsp)
	.loc 1 306 0
	movq	%rax, 24(%rsp)
.LVL2:
	.loc 1 307 0
	call	malloc
.LVL3:
	.loc 1 308 0
	testq	%rax, %rax
	je	.L2
	.loc 1 312 0
	movl	200(%rsp), %edi
	movq	%rax, %rbx
	.loc 1 309 0
	movq	216(%rsp), %rax
.LVL4:
	.loc 1 312 0
	imull	%r14d, %edi
	.loc 1 309 0
	movq	%rbx, (%rax)
	.loc 1 312 0
	movslq	%edi, %rdi
	call	malloc
.LVL5:
	.loc 1 313 0
	testq	%rax, %rax
	.loc 1 312 0
	movq	%rax, %r12
.LVL6:
	.loc 1 313 0
	je	.L17
	.loc 1 319 0
	movslq	208(%rsp), %r15
	.loc 1 318 0
	movq	%rax, 24(%rbx)
	.loc 1 319 0
	leaq	0(,%r15,4), %rbp
	movq	%rbp, %rdi
	call	malloc
.LVL7:
	.loc 1 320 0
	testq	%rax, %rax
	.loc 1 319 0
	movq	%rax, %r14
.LVL8:
	.loc 1 320 0
	je	.L18
	.loc 1 327 0
	salq	$3, %r15
	.loc 1 326 0
	movq	%rax, 32(%rbx)
	.loc 1 327 0
	movq	%r15, %rdi
	call	malloc
.LVL9:
	.loc 1 328 0
	testq	%rax, %rax
	.loc 1 327 0
	movq	%rax, 8(%rsp)
.LVL10:
	.loc 1 328 0
	je	.L21
	.loc 1 335 0
	movq	8(%rsp), %rax
	.loc 1 336 0
	movq	%rbp, %rdi
	.loc 1 335 0
	movq	%rax, 40(%rbx)
	.loc 1 336 0
	call	malloc
.LVL11:
	.loc 1 337 0
	testq	%rax, %rax
	.loc 1 336 0
	movq	%rax, 16(%rsp)
.LVL12:
	.loc 1 337 0
	je	.L25
	.loc 1 345 0
	movq	16(%rsp), %rax
	.loc 1 346 0
	movq	%rbp, %rdi
	.loc 1 345 0
	movq	%rax, 48(%rbx)
	.loc 1 346 0
	call	malloc
.LVL13:
	.loc 1 347 0
	testq	%rax, %rax
	.loc 1 346 0
	movq	%rax, 32(%rsp)
.LVL14:
	.loc 1 347 0
	je	.L22
	.loc 1 356 0
	movq	32(%rsp), %rax
	.loc 1 357 0
	movq	%rbp, %rdi
	.loc 1 356 0
	movq	%rax, 56(%rbx)
	.loc 1 357 0
	call	malloc
.LVL15:
	.loc 1 358 0
	testq	%rax, %rax
	.loc 1 357 0
	movq	%rax, 40(%rsp)
.LVL16:
	.loc 1 358 0
	je	.L23
	.loc 1 368 0
	movq	40(%rsp), %rax
	.loc 1 369 0
	movq	%rbp, %rdi
	.loc 1 368 0
	movq	%rax, 64(%rbx)
	.loc 1 369 0
	call	malloc
.LVL17:
	.loc 1 370 0
	testq	%rax, %rax
	.loc 1 369 0
	movq	%rax, 96(%rsp)
.LVL18:
	.loc 1 370 0
	je	.L20
	.loc 1 381 0
	movq	96(%rsp), %rax
	.loc 1 382 0
	movq	%r15, %rdi
	.loc 1 381 0
	movq	%rax, 88(%rbx)
	.loc 1 382 0
	call	malloc
.LVL19:
	.loc 1 383 0
	testq	%rax, %rax
	.loc 1 382 0
	movq	%rax, %r15
.LVL20:
	.loc 1 383 0
	je	.L26
	.loc 1 395 0
	movq	%rax, 96(%rbx)
	.loc 1 396 0
	movq	%rbp, %rdi
	call	malloc
.LVL21:
	.loc 1 397 0
	testq	%rax, %rax
	.loc 1 396 0
	movq	%rax, %r13
.LVL22:
	.loc 1 397 0
	je	.L27
	.loc 1 410 0
	movq	%rax, 104(%rbx)
	.loc 1 411 0
	movq	%rbp, %rdi
	call	malloc
.LVL23:
	.loc 1 412 0
	testq	%rax, %rax
	je	.L19
	.loc 1 426 0
	movq	%rax, 120(%rbx)
	.loc 1 427 0
	movq	%rbp, %rdi
	.loc 1 426 0
	movq	%rax, 104(%rsp)
	.loc 1 427 0
	call	malloc
.LVL24:
	.loc 1 428 0
	testq	%rax, %rax
	movq	104(%rsp), %rdx
	je	.L28
	.loc 1 443 0
	movq	%rax, 112(%rbx)
	.loc 1 446 0
	movq	56(%rsp), %rax
.LVL25:
	.loc 1 460 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 184
	.loc 1 445 0
	movq	56(%rsp), %rsi
	.loc 1 460 0
	movq	%r14, %rdi
	.loc 1 485 0
	movl	$1, %r13d
.LVL26:
	.loc 1 446 0
	movq	%rax, 80(%rbx)
	.loc 1 447 0
	movq	72(%rsp), %rax
	.loc 1 445 0
	movq	%rsi, 72(%rbx)
	.loc 1 447 0
	movq	%rax, 128(%rbx)
	.loc 1 448 0
	movq	80(%rsp), %rax
	movq	%rax, 136(%rbx)
	.loc 1 449 0
	movl	92(%rsp), %eax
	movl	%eax, (%rbx)
	.loc 1 450 0
	movq	96(%rsp), %rax
	movq	%rax, 8(%rbx)
	.loc 1 451 0
	movq	184(%rsp), %rax
	movq	%rax, 16(%rbx)
	.loc 1 452 0
	movq	192(%rsp), %rax
	movq	%rax, 144(%rbx)
	.loc 1 453 0
	movq	200(%rsp), %rax
	movq	%rax, 152(%rbx)
	.loc 1 454 0
	movl	208(%rsp), %eax
	movl	%eax, 164(%rbx)
	.loc 1 455 0
	movl	216(%rsp), %eax
	movl	%eax, 168(%rbx)
	.loc 1 460 0
	movl	216(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 192
	movq	56(%rsp), %r9
	movq	48(%rsp), %r8
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	call	map_impl_init
.LVL27:
	.loc 1 470 0
	movq	232(%rsp), %rax
	movq	(%rax), %rax
	.loc 1 467 0
	movl	168(%rax), %r8d
	movq	96(%rax), %rdx
	movq	104(%rax), %rcx
	movq	128(%rax), %rsi
	movq	88(%rax), %rdi
	movq	120(%rax), %r9
	movl	%r8d, (%rsp)
	movq	112(%rax), %r8
	call	map_impl_init
.LVL28:
	.loc 1 472 0
	movq	232(%rsp), %rax
	movq	(%rax), %rax
	movl	$0, 160(%rax)
	.loc 1 485 0
	popq	%rax
	.cfi_def_cfa_offset 184
	popq	%rdx
	.cfi_def_cfa_offset 176
.LVL29:
.L2:
	.loc 1 486 0
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r13d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL30:
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
	.loc 1 338 0
	movq	8(%rsp), %rdi
	call	free
.LVL31:
.L21:
	.loc 1 339 0
	movq	%r14, %rdi
	call	free
.LVL32:
.L18:
	.loc 1 321 0
	movq	%r12, %rdi
	call	free
.LVL33:
.L17:
	.loc 1 322 0
	movq	%rbx, %rdi
	call	free
.LVL34:
	.loc 1 323 0
	movq	216(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	.loc 1 324 0
	jmp	.L2
.LVL35:
	.p2align 4,,10
	.p2align 3
.L26:
	.loc 1 384 0
	movq	96(%rsp), %rdi
	call	free
.LVL36:
	.loc 1 385 0
	movq	40(%rsp), %rdi
	call	free
.LVL37:
.L23:
	.loc 1 386 0
	movq	32(%rsp), %rdi
	call	free
.LVL38:
.L22:
	.loc 1 387 0
	movq	16(%rsp), %rdi
	call	free
.LVL39:
	.loc 1 388 0
	movq	8(%rsp), %rdi
	call	free
.LVL40:
	.loc 1 389 0
	movq	%r14, %rdi
	call	free
.LVL41:
	.loc 1 321 0
	movq	%r12, %rdi
	call	free
.LVL42:
	jmp	.L17
.LVL43:
	.p2align 4,,10
	.p2align 3
.L27:
	.loc 1 398 0
	movq	%r15, %rdi
	call	free
.LVL44:
	.loc 1 399 0
	movq	96(%rsp), %rdi
	call	free
.LVL45:
.L20:
	.loc 1 400 0
	movq	40(%rsp), %rdi
	call	free
.LVL46:
	.loc 1 401 0
	movq	32(%rsp), %rdi
	call	free
.LVL47:
	.loc 1 402 0
	movq	16(%rsp), %rdi
	call	free
.LVL48:
	.loc 1 403 0
	movq	8(%rsp), %rdi
	call	free
.LVL49:
	.loc 1 404 0
	movq	%r14, %rdi
	call	free
.LVL50:
	.loc 1 405 0
	movq	%r12, %rdi
	call	free
.LVL51:
	.loc 1 406 0
	movq	%rbx, %rdi
	call	free
.LVL52:
	.loc 1 407 0
	movq	216(%rsp), %rax
	movq	24(%rsp), %rsi
	movq	%rsi, (%rax)
	.loc 1 408 0
	jmp	.L2
.LVL53:
	.p2align 4,,10
	.p2align 3
.L28:
	.loc 1 429 0
	movq	%rdx, %rdi
	call	free
.LVL54:
.L19:
	.loc 1 430 0
	movq	%r13, %rdi
	.loc 1 441 0
	xorl	%r13d, %r13d
.LVL55:
	.loc 1 430 0
	call	free
.LVL56:
	.loc 1 431 0
	movq	%r15, %rdi
	call	free
.LVL57:
	.loc 1 432 0
	movq	96(%rsp), %rdi
	call	free
.LVL58:
	.loc 1 433 0
	movq	40(%rsp), %rdi
	call	free
.LVL59:
	.loc 1 434 0
	movq	32(%rsp), %rdi
	call	free
.LVL60:
	.loc 1 435 0
	movq	16(%rsp), %rdi
	call	free
.LVL61:
	.loc 1 436 0
	movq	8(%rsp), %rdi
	call	free
.LVL62:
	.loc 1 437 0
	movq	%r14, %rdi
	call	free
.LVL63:
	.loc 1 438 0
	movq	%r12, %rdi
	call	free
.LVL64:
	.loc 1 439 0
	movq	%rbx, %rdi
	call	free
.LVL65:
	.loc 1 440 0
	movq	216(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	.loc 1 441 0
	jmp	.L2
	.cfi_endproc
.LFE37:
	.size	dmap_allocate, .-dmap_allocate
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	dmap_get_a
	.type	dmap_get_a, @function
dmap_get_a:
.LFB38:
	.loc 1 524 0
	.cfi_startproc
.LVL66:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 524 0
	movq	%rdi, %rbx
.LVL67:
	movq	%rsi, %rbp
	.loc 1 531 0
	movq	%rsi, %rdi
.LVL68:
	call	*80(%rbx)
.LVL69:
	.loc 1 533 0
	movl	168(%rbx), %r8d
	movq	56(%rbx), %rcx
	movq	%rbp, %r9
	movq	48(%rbx), %rdx
	movq	40(%rbx), %rsi
	movq	32(%rbx), %rdi
	pushq	%r8
	.cfi_def_cfa_offset 40
	movq	64(%rbx), %r8
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rax
	.cfi_def_cfa_offset 56
	pushq	72(%rbx)
	.cfi_def_cfa_offset 64
	call	map_impl_get
.LVL70:
	.loc 1 539 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 540 0
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL71:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL72:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL73:
	ret
	.cfi_endproc
.LFE38:
	.size	dmap_get_a, .-dmap_get_a
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	dmap_get_b
	.type	dmap_get_b, @function
dmap_get_b:
.LFB39:
	.loc 1 558 0
	.cfi_startproc
.LVL74:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 558 0
	movq	%rdi, %rbx
.LVL75:
	movq	%rsi, %rbp
	.loc 1 565 0
	movq	%rsi, %rdi
.LVL76:
	call	*136(%rbx)
.LVL77:
	.loc 1 578 0
	movl	168(%rbx), %r8d
	movq	112(%rbx), %rcx
	movq	%rbp, %r9
	movq	104(%rbx), %rdx
	movq	96(%rbx), %rsi
	movq	88(%rbx), %rdi
	pushq	%r8
	.cfi_def_cfa_offset 40
	movq	120(%rbx), %r8
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rax
	.cfi_def_cfa_offset 56
	pushq	128(%rbx)
	.cfi_def_cfa_offset 64
	call	map_impl_get
.LVL78:
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 585 0
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL79:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL80:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL81:
	ret
	.cfi_endproc
.LFE39:
	.size	dmap_get_b, .-dmap_get_b
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	dmap_put
	.type	dmap_put, @function
dmap_put:
.LFB40:
	.loc 1 1133 0
	.cfi_startproc
.LVL82:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edx, %r12d
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 1147 0
	movl	(%rdi), %ebp
	.loc 1 1133 0
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 1142 0
	movq	$0, 8(%rsp)
	.loc 1 1143 0
	movq	$0, 16(%rsp)
	.loc 1 1147 0
	imull	%edx, %ebp
	movslq	%ebp, %rbp
	addq	24(%rdi), %rbp
.LVL83:
	.loc 1 1149 0
	movq	%rbp, %rdi
.LVL84:
	call	*8(%rbx)
.LVL85:
	.loc 1 1152 0
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rsi
	movq	%rbp, %rdi
	call	*144(%rbx)
.LVL86:
	.loc 1 1155 0
	movq	8(%rsp), %rdi
	call	*80(%rbx)
.LVL87:
	.loc 1 1165 0
	movl	168(%rbx), %r8d
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	56(%rbx), %rcx
	movq	48(%rbx), %rdx
	movq	40(%rbx), %rsi
	movq	32(%rbx), %rdi
	pushq	%r8
	.cfi_def_cfa_offset 80
	movq	64(%rbx), %r8
	pushq	%r12
	.cfi_def_cfa_offset 88
	pushq	%rax
	.cfi_def_cfa_offset 96
	movq	40(%rsp), %r9
	call	map_impl_put
.LVL88:
	.loc 1 1175 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
	movq	16(%rsp), %rdi
	call	*136(%rbx)
.LVL89:
	.loc 1 1183 0
	movl	168(%rbx), %r8d
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	112(%rbx), %rcx
	movq	104(%rbx), %rdx
	movq	96(%rbx), %rsi
	movq	88(%rbx), %rdi
	pushq	%r8
	.cfi_def_cfa_offset 80
	movq	120(%rbx), %r8
	pushq	%r12
	.cfi_def_cfa_offset 88
	pushq	%rax
	.cfi_def_cfa_offset 96
	movq	48(%rsp), %r9
	call	map_impl_put
.LVL90:
	.loc 1 1193 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 1190 0
	addl	$1, 160(%rbx)
.LVL91:
	.loc 1 1193 0
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	%rbp, %rdi
	call	*152(%rbx)
.LVL92:
	.loc 1 1218 0
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L36
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL93:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL94:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL95:
	ret
.LVL96:
.L36:
	.cfi_restore_state
	call	__stack_chk_fail
.LVL97:
	.cfi_endproc
.LFE40:
	.size	dmap_put, .-dmap_put
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	dmap_get_value
	.type	dmap_get_value, @function
dmap_get_value:
.LFB41:
	.loc 1 1232 0
	.cfi_startproc
.LVL98:
	.loc 1 1246 0
	imull	(%rdi), %esi
.LVL99:
	movq	8(%rdi), %rax
	movslq	%esi, %rsi
	addq	24(%rdi), %rsi
.LVL100:
	movq	%rdx, %rdi
.LVL101:
	jmp	*%rax
.LVL102:
	.cfi_endproc
.LFE41:
	.size	dmap_get_value, .-dmap_get_value
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	dmap_erase
	.type	dmap_erase, @function
dmap_erase:
.LFB42:
	.loc 1 1633 0
	.cfi_startproc
.LVL103:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 1649 0
	imull	(%rdi), %esi
.LVL104:
	.loc 1 1633 0
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	.loc 1 1642 0
	movq	$0, 8(%rsp)
	.loc 1 1643 0
	movq	$0, 16(%rsp)
	.loc 1 1651 0
	leaq	24(%rsp), %rdx
	.loc 1 1644 0
	movq	$0, 24(%rsp)
	.loc 1 1645 0
	movq	$0, 32(%rsp)
	.loc 1 1649 0
	movslq	%esi, %rbp
	addq	24(%rdi), %rbp
.LVL105:
	.loc 1 1651 0
	leaq	8(%rsp), %rsi
	movq	%rbp, %rdi
.LVL106:
	call	*144(%rbx)
.LVL107:
	.loc 1 1662 0
	movq	8(%rsp), %rdi
	call	*80(%rbx)
.LVL108:
	.loc 1 1665 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movq	56(%rbx), %rcx
	movq	48(%rbx), %rdx
	leaq	24(%rsp), %r8
	movq	40(%rbx), %rsi
	movq	72(%rbx), %r9
	movq	32(%rbx), %rdi
	pushq	%r8
	.cfi_def_cfa_offset 96
	movl	168(%rbx), %r8d
	pushq	%r8
	.cfi_def_cfa_offset 104
	pushq	%rax
	.cfi_def_cfa_offset 112
	movq	40(%rsp), %r8
	call	map_impl_erase
.LVL109:
	.loc 1 1673 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 80
	movq	24(%rsp), %rdi
	call	*136(%rbx)
.LVL110:
	.loc 1 1681 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movq	112(%rbx), %rcx
	movq	128(%rbx), %r9
	leaq	40(%rsp), %r8
	movq	104(%rbx), %rdx
	movq	96(%rbx), %rsi
	movq	88(%rbx), %rdi
	pushq	%r8
	.cfi_def_cfa_offset 96
	movl	168(%rbx), %r8d
	pushq	%r8
	.cfi_def_cfa_offset 104
	pushq	%rax
	.cfi_def_cfa_offset 112
	movq	56(%rsp), %r8
	call	map_impl_erase
.LVL111:
	.loc 1 1689 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 1688 0
	movq	152(%rbx), %r12
.LVL112:
	.loc 1 1689 0
	movq	24(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	%rbp, %rdi
	call	*%r12
.LVL113:
	.loc 1 1690 0
	movq	32(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	%rbp, %rdi
	call	*%r12
.LVL114:
	.loc 1 1692 0
	movq	%rbp, %rdi
	call	*16(%rbx)
.LVL115:
	.loc 1 1693 0
	subl	$1, 160(%rbx)
	.loc 1 1709 0
	movq	40(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L41
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL116:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL117:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL118:
	ret
.LVL119:
.L41:
	.cfi_restore_state
	call	__stack_chk_fail
.LVL120:
	.cfi_endproc
.LFE42:
	.size	dmap_erase, .-dmap_erase
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	dmap_size
	.type	dmap_size, @function
dmap_size:
.LFB43:
	.loc 1 1752 0
	.cfi_startproc
.LVL121:
	.loc 1 1758 0
	movl	160(%rdi), %eax
	.loc 1 1762 0
	ret
	.cfi_endproc
.LFE43:
	.size	dmap_size, .-dmap_size
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "lib/containers/map-impl.h"
	.file 4 "lib/containers/map-util.h"
	.file 5 "lib/containers/double-map.h"
	.file 6 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xdee
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF78
	.byte	0xc
	.long	.LASF79
	.long	.LASF80
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.long	.LASF11
	.byte	0x2
	.byte	0x30
	.long	0x42
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x6
	.long	0xa5
	.uleb128 0x7
	.long	0x34
	.long	0xb9
	.uleb128 0x8
	.long	0x6c
	.uleb128 0x8
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x4
	.byte	0x6
	.long	0xc4
	.uleb128 0x7
	.long	0x34
	.long	0xd3
	.uleb128 0x8
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x5
	.byte	0x10
	.long	0xde
	.uleb128 0x9
	.long	0xee
	.uleb128 0x8
	.long	0x6e
	.uleb128 0x8
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.byte	0x14
	.long	0xf9
	.uleb128 0x9
	.long	0x10e
	.uleb128 0x8
	.long	0x6c
	.uleb128 0x8
	.long	0x10e
	.uleb128 0x8
	.long	0x10e
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x6c
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.byte	0x28
	.long	0x11f
	.uleb128 0x9
	.long	0x134
	.uleb128 0x8
	.long	0x6c
	.uleb128 0x8
	.long	0x6c
	.uleb128 0x8
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.long	0x13f
	.uleb128 0x9
	.long	0x14a
	.uleb128 0x8
	.long	0x6c
	.byte	0
	.uleb128 0xa
	.long	.LASF81
	.byte	0xb0
	.byte	0x1
	.byte	0x8
	.long	0x26a
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0x9
	.long	0x34
	.byte	0
	.uleb128 0xc
	.string	"cpy"
	.byte	0x1
	.byte	0xb
	.long	0x26a
	.byte	0x8
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.byte	0xc
	.long	0x270
	.byte	0x10
	.uleb128 0xb
	.long	.LASF20
	.byte	0x1
	.byte	0xe
	.long	0x276
	.byte	0x18
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.byte	0x10
	.long	0x7b
	.byte	0x20
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1
	.byte	0x11
	.long	0x10e
	.byte	0x28
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x12
	.long	0x7b
	.byte	0x30
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x13
	.long	0x7b
	.byte	0x38
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0x14
	.long	0x7b
	.byte	0x40
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.byte	0x15
	.long	0x27c
	.byte	0x48
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x16
	.long	0x282
	.byte	0x50
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0x18
	.long	0x7b
	.byte	0x58
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.byte	0x19
	.long	0x10e
	.byte	0x60
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.byte	0x1a
	.long	0x7b
	.byte	0x68
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.byte	0x1b
	.long	0x7b
	.byte	0x70
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.byte	0x1c
	.long	0x7b
	.byte	0x78
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.byte	0x1d
	.long	0x27c
	.byte	0x80
	.uleb128 0xb
	.long	.LASF34
	.byte	0x1
	.byte	0x1e
	.long	0x282
	.byte	0x88
	.uleb128 0xc
	.string	"exk"
	.byte	0x1
	.byte	0x20
	.long	0x288
	.byte	0x90
	.uleb128 0xc
	.string	"pk"
	.byte	0x1
	.byte	0x21
	.long	0x28e
	.byte	0x98
	.uleb128 0xb
	.long	.LASF35
	.byte	0x1
	.byte	0x23
	.long	0x34
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x1
	.byte	0x24
	.long	0x34
	.byte	0xa4
	.uleb128 0xb
	.long	.LASF37
	.byte	0x1
	.byte	0x25
	.long	0x34
	.byte	0xa8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xd3
	.uleb128 0x5
	.byte	0x8
	.long	0x134
	.uleb128 0x5
	.byte	0x8
	.long	0x8f
	.uleb128 0x5
	.byte	0x8
	.long	0x9a
	.uleb128 0x5
	.byte	0x8
	.long	0xb9
	.uleb128 0x5
	.byte	0x8
	.long	0xee
	.uleb128 0x5
	.byte	0x8
	.long	0x114
	.uleb128 0xd
	.long	.LASF55
	.byte	0x1
	.value	0x10c
	.long	0x34
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b4
	.uleb128 0xe
	.long	.LASF26
	.byte	0x1
	.value	0x10d
	.long	0x27c
	.long	.LLST0
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.value	0x10d
	.long	0x282
	.long	.LLST1
	.uleb128 0xe
	.long	.LASF33
	.byte	0x1
	.value	0x10e
	.long	0x27c
	.long	.LLST2
	.uleb128 0xe
	.long	.LASF34
	.byte	0x1
	.value	0x10e
	.long	0x282
	.long	.LLST3
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.value	0x10f
	.long	0x34
	.long	.LLST4
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.value	0x10f
	.long	0x26a
	.long	.LLST5
	.uleb128 0xf
	.long	.LASF39
	.byte	0x1
	.value	0x110
	.long	0x270
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.long	.LASF40
	.byte	0x1
	.value	0x111
	.long	0x288
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.string	"dpk"
	.byte	0x1
	.value	0x112
	.long	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.long	.LASF36
	.byte	0x1
	.value	0x113
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xf
	.long	.LASF37
	.byte	0x1
	.value	0x114
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xf
	.long	.LASF41
	.byte	0x1
	.value	0x115
	.long	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.value	0x132
	.long	0x8ba
	.long	.LLST6
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.value	0x133
	.long	0x8ba
	.long	.LLST7
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.value	0x138
	.long	0x276
	.long	.LLST8
	.uleb128 0x11
	.long	.LASF45
	.byte	0x1
	.value	0x13f
	.long	0x7b
	.long	.LLST9
	.uleb128 0x11
	.long	.LASF46
	.byte	0x1
	.value	0x147
	.long	0x10e
	.long	.LLST10
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.value	0x150
	.long	0x7b
	.long	.LLST11
	.uleb128 0x11
	.long	.LASF48
	.byte	0x1
	.value	0x15a
	.long	0x7b
	.long	.LLST12
	.uleb128 0x11
	.long	.LASF49
	.byte	0x1
	.value	0x165
	.long	0x7b
	.long	.LLST13
	.uleb128 0x11
	.long	.LASF50
	.byte	0x1
	.value	0x171
	.long	0x7b
	.long	.LLST14
	.uleb128 0x11
	.long	.LASF51
	.byte	0x1
	.value	0x17e
	.long	0x10e
	.long	.LLST15
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.value	0x18c
	.long	0x7b
	.long	.LLST16
	.uleb128 0x11
	.long	.LASF53
	.byte	0x1
	.value	0x19b
	.long	0x7b
	.long	.LLST17
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.value	0x1ab
	.long	0x7b
	.long	.LLST18
	.uleb128 0x12
	.quad	.LVL3
	.long	0xda4
	.long	0x458
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xb0
	.byte	0
	.uleb128 0x12
	.quad	.LVL5
	.long	0xda4
	.long	0x47b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.byte	0x91
	.sleb128 24
	.byte	0x94
	.byte	0x4
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.uleb128 0x12
	.quad	.LVL7
	.long	0xda4
	.long	0x493
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL9
	.long	0xda4
	.long	0x4ab
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL11
	.long	0xda4
	.long	0x4c3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL13
	.long	0xda4
	.long	0x4db
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL15
	.long	0xda4
	.long	0x4f3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL17
	.long	0xda4
	.long	0x50b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL19
	.long	0xda4
	.long	0x523
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL21
	.long	0xda4
	.long	0x53b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL23
	.long	0xda4
	.long	0x553
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL24
	.long	0xda4
	.long	0x56b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL27
	.long	0xdb0
	.long	0x5ab
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.quad	.LVL28
	.long	0xdb0
	.uleb128 0x12
	.quad	.LVL31
	.long	0xdbb
	.long	0x5d2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL32
	.long	0xdbb
	.long	0x5ea
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL33
	.long	0xdbb
	.long	0x602
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL34
	.long	0xdbb
	.long	0x61a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL36
	.long	0xdbb
	.long	0x634
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL37
	.long	0xdbb
	.long	0x64e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL38
	.long	0xdbb
	.long	0x668
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL39
	.long	0xdbb
	.long	0x682
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL40
	.long	0xdbb
	.long	0x69c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL41
	.long	0xdbb
	.long	0x6b4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL42
	.long	0xdbb
	.long	0x6cc
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL44
	.long	0xdbb
	.long	0x6e4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL45
	.long	0xdbb
	.long	0x6fe
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL46
	.long	0xdbb
	.long	0x718
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL47
	.long	0xdbb
	.long	0x732
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL48
	.long	0xdbb
	.long	0x74c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL49
	.long	0xdbb
	.long	0x766
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL50
	.long	0xdbb
	.long	0x77e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL51
	.long	0xdbb
	.long	0x796
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL52
	.long	0xdbb
	.long	0x7ae
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL54
	.long	0xdbb
	.long	0x7c8
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.quad	.LVL56
	.long	0xdbb
	.uleb128 0x12
	.quad	.LVL57
	.long	0xdbb
	.long	0x7ed
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL58
	.long	0xdbb
	.long	0x807
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL59
	.long	0xdbb
	.long	0x821
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL60
	.long	0xdbb
	.long	0x83b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL61
	.long	0xdbb
	.long	0x855
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL62
	.long	0xdbb
	.long	0x86f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL63
	.long	0xdbb
	.long	0x887
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL64
	.long	0xdbb
	.long	0x89f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.quad	.LVL65
	.long	0xdbb
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x8ba
	.uleb128 0x5
	.byte	0x8
	.long	0x14a
	.uleb128 0xd
	.long	.LASF56
	.byte	0x1
	.value	0x1fc
	.long	0x34
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x969
	.uleb128 0x16
	.string	"map"
	.byte	0x1
	.value	0x1fc
	.long	0x8ba
	.long	.LLST19
	.uleb128 0x16
	.string	"key"
	.byte	0x1
	.value	0x1fc
	.long	0x6c
	.long	.LLST20
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.value	0x1fc
	.long	0x7b
	.long	.LLST21
	.uleb128 0x11
	.long	.LASF27
	.byte	0x1
	.value	0x20f
	.long	0x282
	.long	.LLST22
	.uleb128 0x11
	.long	.LASF58
	.byte	0x1
	.value	0x213
	.long	0x34
	.long	.LLST23
	.uleb128 0x17
	.string	"rez"
	.byte	0x1
	.value	0x215
	.long	0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x18
	.quad	.LVL69
	.long	0x954
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.quad	.LVL70
	.long	0xdc7
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF59
	.byte	0x1
	.value	0x21e
	.long	0x34
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0xa04
	.uleb128 0x16
	.string	"map"
	.byte	0x1
	.value	0x21e
	.long	0x8ba
	.long	.LLST24
	.uleb128 0x16
	.string	"key"
	.byte	0x1
	.value	0x21e
	.long	0x6c
	.long	.LLST25
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.value	0x21e
	.long	0x7b
	.long	.LLST26
	.uleb128 0x11
	.long	.LASF34
	.byte	0x1
	.value	0x231
	.long	0x282
	.long	.LLST27
	.uleb128 0x11
	.long	.LASF58
	.byte	0x1
	.value	0x235
	.long	0x34
	.long	.LLST28
	.uleb128 0x18
	.quad	.LVL77
	.long	0x9ef
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.quad	.LVL78
	.long	0xdc7
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF60
	.byte	0x1
	.value	0x45c
	.long	0x34
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xb6a
	.uleb128 0x16
	.string	"map"
	.byte	0x1
	.value	0x45c
	.long	0x8ba
	.long	.LLST29
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.value	0x45c
	.long	0x6c
	.long	.LLST30
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.value	0x45c
	.long	0x34
	.long	.LLST31
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x1
	.value	0x476
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x1
	.value	0x477
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.value	0x47b
	.long	0x6c
	.long	.LLST32
	.uleb128 0x1b
	.string	"cpy"
	.byte	0x1
	.value	0x47c
	.long	0x26a
	.long	.LLST33
	.uleb128 0x1b
	.string	"exk"
	.byte	0x1
	.value	0x47f
	.long	0x288
	.long	.LLST34
	.uleb128 0x11
	.long	.LASF27
	.byte	0x1
	.value	0x482
	.long	0x282
	.long	.LLST35
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.value	0x483
	.long	0x34
	.long	.LLST36
	.uleb128 0x11
	.long	.LASF34
	.byte	0x1
	.value	0x496
	.long	0x282
	.long	.LLST37
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.value	0x497
	.long	0x34
	.long	.LLST38
	.uleb128 0x1b
	.string	"pk"
	.byte	0x1
	.value	0x4a7
	.long	0x28e
	.long	.LLST39
	.uleb128 0x18
	.quad	.LVL85
	.long	0xb0e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x18
	.quad	.LVL86
	.long	0xb2e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x14
	.quad	.LVL88
	.long	0xdd2
	.uleb128 0x14
	.quad	.LVL90
	.long	0xdd2
	.uleb128 0x18
	.quad	.LVL92
	.long	0xb5c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.quad	.LVL97
	.long	0xddd
	.byte	0
	.uleb128 0x1c
	.long	.LASF82
	.byte	0x1
	.value	0x4c4
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0xbea
	.uleb128 0x16
	.string	"map"
	.byte	0x1
	.value	0x4c4
	.long	0x8ba
	.long	.LLST40
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.value	0x4c4
	.long	0x34
	.long	.LLST41
	.uleb128 0xe
	.long	.LASF67
	.byte	0x1
	.value	0x4c5
	.long	0x6c
	.long	.LLST42
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.value	0x4dc
	.long	0x6c
	.long	.LLST43
	.uleb128 0x1b
	.string	"cpy"
	.byte	0x1
	.value	0x4dd
	.long	0x26a
	.long	.LLST44
	.uleb128 0x1d
	.quad	.LVL102
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF68
	.byte	0x1
	.value	0x656
	.long	0x34
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0xd73
	.uleb128 0x16
	.string	"map"
	.byte	0x1
	.value	0x656
	.long	0x8ba
	.long	.LLST45
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.value	0x656
	.long	0x34
	.long	.LLST46
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x1
	.value	0x66a
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x1
	.value	0x66b
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x1
	.value	0x66c
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x1
	.value	0x66d
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.value	0x671
	.long	0x6c
	.long	.LLST47
	.uleb128 0x1b
	.string	"exk"
	.byte	0x1
	.value	0x672
	.long	0x288
	.long	.LLST48
	.uleb128 0x11
	.long	.LASF27
	.byte	0x1
	.value	0x67d
	.long	0x282
	.long	.LLST49
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.value	0x67e
	.long	0x34
	.long	.LLST50
	.uleb128 0x11
	.long	.LASF34
	.byte	0x1
	.value	0x688
	.long	0x282
	.long	.LLST51
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.value	0x689
	.long	0x34
	.long	.LLST52
	.uleb128 0x1b
	.string	"pk"
	.byte	0x1
	.value	0x698
	.long	0x28e
	.long	.LLST53
	.uleb128 0x11
	.long	.LASF19
	.byte	0x1
	.value	0x69b
	.long	0x270
	.long	.LLST54
	.uleb128 0x18
	.quad	.LVL107
	.long	0xd09
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x14
	.quad	.LVL109
	.long	0xde6
	.uleb128 0x14
	.quad	.LVL111
	.long	0xde6
	.uleb128 0x1e
	.quad	.LVL113
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.long	0xd3a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL114
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.long	0xd51
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.quad	.LVL115
	.long	0xd65
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.quad	.LVL120
	.long	0xddd
	.byte	0
	.uleb128 0xd
	.long	.LASF71
	.byte	0x1
	.value	0x6d0
	.long	0x34
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0xda4
	.uleb128 0x10
	.string	"map"
	.byte	0x1
	.value	0x6d0
	.long	0x8ba
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x1f
	.long	.LASF72
	.long	.LASF72
	.byte	0x6
	.value	0x1d2
	.uleb128 0x20
	.long	.LASF73
	.long	.LASF73
	.byte	0x3
	.byte	0x69
	.uleb128 0x1f
	.long	.LASF74
	.long	.LASF74
	.byte	0x6
	.value	0x1e3
	.uleb128 0x20
	.long	.LASF75
	.long	.LASF75
	.byte	0x3
	.byte	0x7a
	.uleb128 0x20
	.long	.LASF76
	.long	.LASF76
	.byte	0x3
	.byte	0x92
	.uleb128 0x21
	.long	.LASF83
	.long	.LASF83
	.uleb128 0x20
	.long	.LASF77
	.long	.LASF77
	.byte	0x3
	.byte	0xa7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL3-1-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL3-1-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL3-1-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL3-1-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL8-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL3-1-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL3-1-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -152
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL4-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL30-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL7-1-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL30-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL9-1-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL30-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL35-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL11-1-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	.LVL30-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	.LVL35-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL13-1-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL31-1-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL35-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL15-1-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -144
	.quad	.LVL35-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -144
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL17-1-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	.LVL35-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	.LVL43-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL19-1-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL43-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL21-1-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL36-1-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL53-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL23-1-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL44-1-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL53-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL24-1-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL25-.Ltext0
	.quad	.LVL27-1-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 112
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL66-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL68-.Ltext0
	.quad	.LVL71-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL71-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL66-.Ltext0
	.quad	.LVL69-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL69-1-.Ltext0
	.quad	.LVL72-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL72-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL66-.Ltext0
	.quad	.LVL69-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL69-1-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL73-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL67-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 80
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-1-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 80
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL69-.Ltext0
	.quad	.LVL70-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL74-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL76-.Ltext0
	.quad	.LVL79-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL79-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL74-.Ltext0
	.quad	.LVL77-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL77-1-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL80-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL74-.Ltext0
	.quad	.LVL77-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL77-1-.Ltext0
	.quad	.LVL81-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL81-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 136
	.quad	.LVL76-.Ltext0
	.quad	.LVL77-1-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 136
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL77-.Ltext0
	.quad	.LVL78-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL82-.Ltext0
	.quad	.LVL84-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL84-.Ltext0
	.quad	.LVL93-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL93-.Ltext0
	.quad	.LVL96-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL96-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL82-.Ltext0
	.quad	.LVL85-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL85-1-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL82-.Ltext0
	.quad	.LVL85-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL85-1-.Ltext0
	.quad	.LVL95-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL95-.Ltext0
	.quad	.LVL96-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL96-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL83-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL96-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL83-.Ltext0
	.quad	.LVL84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.quad	.LVL84-.Ltext0
	.quad	.LVL85-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL85-.Ltext0
	.quad	.LVL86-1-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 144
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL86-.Ltext0
	.quad	.LVL87-1-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 80
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL87-.Ltext0
	.quad	.LVL88-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL88-.Ltext0
	.quad	.LVL89-1-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 136
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL89-.Ltext0
	.quad	.LVL90-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL91-.Ltext0
	.quad	.LVL92-1-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 152
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL98-.Ltext0
	.quad	.LVL101-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL101-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL99-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL98-.Ltext0
	.quad	.LVL102-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL102-1-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x12
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x75
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.quad	.LVL99-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x13
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x75
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.quad	.LVL100-.Ltext0
	.quad	.LVL102-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL98-.Ltext0
	.quad	.LVL101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.quad	.LVL101-.Ltext0
	.quad	.LVL102-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL103-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL106-.Ltext0
	.quad	.LVL116-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL116-.Ltext0
	.quad	.LVL119-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL119-.Ltext0
	.quad	.LFE42-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL103-.Ltext0
	.quad	.LVL104-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL104-.Ltext0
	.quad	.LFE42-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL105-.Ltext0
	.quad	.LVL117-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL119-.Ltext0
	.quad	.LFE42-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL105-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 144
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-1-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 144
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL107-.Ltext0
	.quad	.LVL108-1-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 80
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL108-.Ltext0
	.quad	.LVL109-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL109-.Ltext0
	.quad	.LVL110-1-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 136
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL110-.Ltext0
	.quad	.LVL111-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL112-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL119-.Ltext0
	.quad	.LFE42-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL114-.Ltext0
	.quad	.LVL115-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 16
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
.LASF36:
	.string	"capacity"
.LASF72:
	.string	"malloc"
.LASF12:
	.string	"map_keys_equality"
.LASF27:
	.string	"hsh_a"
.LASF34:
	.string	"hsh_b"
.LASF54:
	.string	"chns_b_alloc"
.LASF10:
	.string	"long long unsigned int"
.LASF20:
	.string	"values"
.LASF63:
	.string	"key_b"
.LASF41:
	.string	"map_out"
.LASF74:
	.string	"free"
.LASF65:
	.string	"hash1"
.LASF66:
	.string	"hash2"
.LASF9:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF78:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF23:
	.string	"khs_a"
.LASF21:
	.string	"bbs_a"
.LASF28:
	.string	"bbs_b"
.LASF19:
	.string	"dstr"
.LASF75:
	.string	"map_impl_get"
.LASF81:
	.string	"DoubleMap"
.LASF52:
	.string	"khs_b_alloc"
.LASF6:
	.string	"long int"
.LASF53:
	.string	"inds_b_alloc"
.LASF48:
	.string	"chns_a_alloc"
.LASF40:
	.string	"dexk"
.LASF43:
	.string	"map_alloc"
.LASF79:
	.string	"lib/containers/double-map.c"
.LASF50:
	.string	"bbs_b_alloc"
.LASF67:
	.string	"value_out"
.LASF22:
	.string	"kps_a"
.LASF29:
	.string	"kps_b"
.LASF18:
	.string	"value_size"
.LASF15:
	.string	"dmap_extract_keys"
.LASF46:
	.string	"kps_a_alloc"
.LASF61:
	.string	"value"
.LASF1:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF25:
	.string	"inds_a"
.LASF71:
	.string	"dmap_size"
.LASF3:
	.string	"short unsigned int"
.LASF62:
	.string	"key_a"
.LASF35:
	.string	"n_vals"
.LASF14:
	.string	"uq_value_copy"
.LASF80:
	.string	"/home/rishabh/vignat/nf"
.LASF56:
	.string	"dmap_get_a"
.LASF59:
	.string	"dmap_get_b"
.LASF42:
	.string	"old_map_val"
.LASF7:
	.string	"sizetype"
.LASF38:
	.string	"v_cpy"
.LASF17:
	.string	"uq_value_destr"
.LASF30:
	.string	"khs_b"
.LASF73:
	.string	"map_impl_init"
.LASF26:
	.string	"eq_a"
.LASF33:
	.string	"eq_b"
.LASF64:
	.string	"my_value"
.LASF2:
	.string	"unsigned char"
.LASF76:
	.string	"map_impl_put"
.LASF5:
	.string	"short int"
.LASF47:
	.string	"khs_a_alloc"
.LASF49:
	.string	"inds_a_alloc"
.LASF24:
	.string	"chns_a"
.LASF31:
	.string	"chns_b"
.LASF45:
	.string	"bbs_a_alloc"
.LASF83:
	.string	"__stack_chk_fail"
.LASF69:
	.string	"out_key_a"
.LASF70:
	.string	"out_key_b"
.LASF55:
	.string	"dmap_allocate"
.LASF39:
	.string	"v_destr"
.LASF8:
	.string	"char"
.LASF77:
	.string	"map_impl_erase"
.LASF57:
	.string	"index"
.LASF58:
	.string	"hash"
.LASF82:
	.string	"dmap_get_value"
.LASF68:
	.string	"dmap_erase"
.LASF60:
	.string	"dmap_put"
.LASF13:
	.string	"map_key_hash"
.LASF11:
	.string	"uint8_t"
.LASF32:
	.string	"inds_b"
.LASF51:
	.string	"kps_b_alloc"
.LASF37:
	.string	"keys_capacity"
.LASF16:
	.string	"dmap_pack_keys"
.LASF44:
	.string	"vals_alloc"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
