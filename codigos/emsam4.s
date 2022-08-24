	.file	"main.cpp"
	.text
.lcomm _ZStL8__ioinit,1,1
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	call	__main
	movl	$11148, -4(%rbp)
	movl	-4(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -16(%rbp)
	movl	$0, %eax
	leave
	ret
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
__tcf_0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt8ios_base4InitD1Ev
	leave
	ret
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
_Z41__static_initialization_and_destruction_0ii:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L6
	cmpl	$65535, 24(%rbp)
	jne	.L6
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rax
	movq	%rax, %rcx
	call	atexit
.L6:
	nop
	leave
	ret
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
_GLOBAL__sub_I_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	ret
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.ident	"GCC: (GNU) 12.1.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
