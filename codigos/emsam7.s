_Z4divnii:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	cltd
	idivl	24(%rbp)
	popq	%rbp
	ret
	.globl	_Z4div4i
	.def	_Z4div4i;	.scl	2;	.type	32;	.endef
_Z4div4i:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	popq	%rbp
	ret
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"