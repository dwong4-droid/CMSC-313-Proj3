	.file	"proj3.c"
	.text
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
	movq	%rcx, %rbx
	movq	%rdx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	88(%rsp), %rsi
	movq	%rsi, 40(%rsp)
	movl	$1, %ecx
	call	*__imp___acrt_iob_func(%rip)
	movq	%rax, %rcx
	movq	%rsi, %r8
	movq	%rbx, %rdx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "rb\0"
.LC1:
	.ascii "binary.out\0"
.LC2:
	.ascii "Could not open file\12\0"
.LC3:
	.ascii "%08x \0"
.LC4:
	.ascii "%02x \0"
.LC5:
	.ascii "|\0"
.LC6:
	.ascii "%c\0"
.LC7:
	.ascii ".\0"
.LC8:
	.ascii "\12\0"
	.text
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rcx
	call	fopen
	movq	%rax, %r14
	movl	$0, %r13d
	movq	__imp_isprint(%rip), %rbp
	leaq	.LC7(%rip), %r12
	testq	%rax, %rax
	jne	.L3
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$1, %eax
	jmp	.L2
.L6:
	movq	%r12, %rcx
	call	printf
.L7:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	je	.L14
.L8:
	movzbl	(%rbx), %esi
	movl	%esi, %ecx
	call	*%rbp
	testl	%eax, %eax
	je	.L6
	movl	%esi, %edx
	movq	%r15, %rcx
	call	printf
	jmp	.L7
.L14:
	leaq	.LC5(%rip), %rcx
	call	printf
	addl	$16, %r13d
	leaq	.LC8(%rip), %rcx
	call	printf
.L3:
	leaq	32(%rsp), %rcx
	movq	%r14, %r9
	movl	$16, %r8d
	movl	$1, %edx
	call	fread
	testq	%rax, %rax
	je	.L15
	movl	%r13d, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	leaq	32(%rsp), %rbx
	leaq	48(%rsp), %rdi
	movq	%rbx, %rsi
	leaq	.LC4(%rip), %r15
.L5:
	movzbl	(%rsi), %edx
	movq	%r15, %rcx
	call	printf
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	jne	.L5
	leaq	.LC5(%rip), %rcx
	call	printf
	leaq	.LC6(%rip), %r15
	jmp	.L8
.L15:
	movq	%r14, %rcx
	call	fclose
	movl	$0, %eax
.L2:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev3, Built by MSYS2 project) 14.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fread;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
