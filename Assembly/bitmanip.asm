# This program sums the values from MIN to MAX
# for example, if MIN = 1 and MAX = 4 Then 
# SUM = 1 + 2 + 3 + 4

.data

min:	.asciiz	"MIN: "
max:	.asciiz	"MAX: "
sum:	.asciiz	"SUM: "

.text

# Get MIN
la	$a0, min
li	$v0, 4
syscall
li	$v0, 5
syscall
move 	$s0, $v0

# Get MAX
la	$a0, max
li	$v0, 4
syscall
li	$v0, 5
syscall
move 	$s1, $v0

move	$t0, $s0	# counter starts at MIN

move	$s3, $s0
# SUM
sumLoop:
	beq	$t0, $s1, Done	# if MIN = MAX exit loop
	addi	$s3, $s3, 1	# $s3++
	add	$s0, $s0, $s3 	# s0 = s0 + s3
	addi	$t0, $t0, 1	# i++
	j	sumLoop
Done:
# Print SUM
la	$a0, sum
li	$v0, 4
syscall
move	$a0, $s0
li	$v0, 1
syscall
# END PROGRAM
li	$v0, 10
syscall