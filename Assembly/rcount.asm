# Recursively count appearance of numbers in a list
.data
first:	.word	1,3,2,3,1,4,2,3
last:	.word
.text
main:

la	$a0, first	# a0 = minIndex
la	$a1, last
addi	$a1, $a1, -4
li	$a2, 3
jal count

print:
move	$a0, $v0
li	$v0, 1
syscall

exit:
li	$v0, 10
syscall

count:
addi	$sp, $sp, -16
sw	$ra, 0($sp)
sw	$ra, 4($sp)
sw	$ra, 8($sp)
sw	$ra, 12($sp)