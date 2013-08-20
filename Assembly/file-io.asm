.data
in:	.asciiz	"pa2_sample.in"
on:	.asciiz "ofile.txt"
buffer:	.space	100
.text
main:
OPEN_IN_FILE:
li	$v0, 13 # open a file
la	$a0, in	# name of the file to open
li	$a1, 0	# read the file
li	$a2, 0
syscall
move	$s0, $v0# save the file desc.
READ_IN_FILE:
li	$v0, 14
move	$a0, $s0
la	$a1, buffer
li	$a2, 100
syscall
PRINT:
la	$a0, buffer
li	$v0, 4
syscall

CLOSE_IN_FILE:
li	$v0, 16
move	$a0, $s0
syscall

OPEN_OUT_FILE:
li	$v0, 13 # open a file
la	$a0, on	# name of the file to open
li	$a1, 0	# read the file
li	$a2, 0
syscall
move	$s0, $v0# save the file desc.
WRITE_OUT_FILE:
li	$v0, 15
move	$a0, $s0
la	$a1, buffer
li	$a2, 100
syscall
CLOSE_OUT_FILE:
li	$v0, 16
move	$a0, $s0
syscall
