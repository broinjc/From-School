.data

t0:	.word	0xBEADFEED
t1:	.word	0xDEADFADE

.text

li	$a0, 0xBEADFEED
#lw	$t1, t1

#sll	$t2, $t0, 4
#or	$t2, $t2, $t1

#add	$a0, $zero, $t2	# move contents of $t0 into $a0

li	$v0, 1	# print the contents of $a0
syscall	

li	$v0, 10	# exit 
syscall	

# 2.13.1b sll $t0 by 4, then or with $t1  $t2 = 0xBFEFFFEDE
# 2.13.2b sll $t0 by 4, then andi with -1 $t2 = 0xBEADFEECF
# .3b srl $t0 by 3, then andi with 0xFFEF $t2 = 0xBFCD

# 2.14.1a 