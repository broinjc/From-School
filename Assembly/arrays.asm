.data
D:	.word	0, 4, 8, 12
.text
la 	$s2, D
li	$s0, 0			# a = 0
while:				# while (a < 10)
	li	$t0, 10	
	beq	$t0, $s0, done
	add	$t1, $s0, $s1	# t1 = a + b
	
	
done:
	li	$v0, 1		# prints $a0
	syscall
	
	li	$v0, 10
	syscall