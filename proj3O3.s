	.file	"proj3.c"
	.text
	.p2align 4
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "|\0"
	.text
	.p2align 4
	.def	printf.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	printf.constprop.0
printf.constprop.0:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$1, %ecx
	leaq	72(%rsp), %rbx
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii ".\0"
	.text
	.p2align 4
	.def	printf.constprop.1;	.scl	3;	.type	32;	.endef
	.seh_proc	printf.constprop.1
printf.constprop.1:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$1, %ecx
	leaq	72(%rsp), %rbx
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "%c\0"
	.text
	.p2align 4
	.def	printf.constprop.2;	.scl	3;	.type	32;	.endef
	.seh_proc	printf.constprop.2
printf.constprop.2:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$1, %ecx
	leaq	72(%rsp), %rbx
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "%02x \0"
	.text
	.p2align 4
	.def	printf.constprop.3;	.scl	3;	.type	32;	.endef
	.seh_proc	printf.constprop.3
printf.constprop.3:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$1, %ecx
	leaq	72(%rsp), %rbx
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "rb\0"
.LC5:
	.ascii "binary.out\0"
.LC6:
	.ascii "Could not open file\12\0"
.LC7:
	.ascii "%08x \0"
.LC8:
	.ascii "\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%r14d, %r14d
	leaq	.LC1(%rip), %r12
	call	__main
	leaq	.LC4(%rip), %rdx
	leaq	48(%rsp), %r13
	leaq	.LC5(%rip), %rcx
	call	fopen
	movq	__imp_isprint(%rip), %rdi
	movq	%rax, 40(%rsp)
	testq	%rax, %rax
	je	.L19
	.p2align 4,,10
	.p2align 3
.L8:
	movq	40(%rsp), %r9
	movl	$16, %r8d
	movl	$1, %edx
	movq	%r13, %rcx
	call	fread
	testq	%rax, %rax
	je	.L20
	movl	%r14d, %edx
	leaq	.LC7(%rip), %rcx
	movq	%r13, %rbx
	movq	%r13, %r15
	call	printf
	leaq	64(%rsp), %rsi
	leaq	.LC3(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L10:
	movzbl	(%r15), %edx
	movq	%rbp, %rcx
	addq	$1, %r15
	call	printf.constprop.3
	cmpq	%rsi, %r15
	jne	.L10
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rbp
	call	printf.constprop.0
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L22:
	movl	%r15d, %edx
	movq	%rbp, %rcx
	addq	$1, %rbx
	call	printf.constprop.2
	cmpq	%rsi, %rbx
	je	.L21
.L13:
	movzbl	(%rbx), %r15d
	movl	%r15d, %ecx
	call	*%rdi
	testl	%eax, %eax
	jne	.L22
	movq	%r12, %rcx
	addq	$1, %rbx
	call	printf.constprop.1
	cmpq	%rsi, %rbx
	jne	.L13
.L21:
	leaq	.LC0(%rip), %rcx
	addl	$16, %r14d
	call	printf.constprop.0
	leaq	.LC8(%rip), %rcx
	call	printf
	jmp	.L8
.L20:
	movq	40(%rsp), %rcx
	call	fclose
	xorl	%eax, %eax
.L7:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L19:
	leaq	.LC6(%rip), %rcx
	call	printf
	movl	$1, %eax
	jmp	.L7
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev3, Built by MSYS2 project) 14.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fread;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
