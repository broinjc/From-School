# Factorial Function

.data
prompt_message:	.asciiz	"Enter a number: "
f:		.ascii	"! = "
.text
#print message
li	$v0, 4
la	$a0, prompt_message
syscall

#read integer
li	$v0, 5
syscall	# --> v0 = input

# counter t1, results t2, input t3,

li	$t1, 1	# loop counter
li	$t2, 1	# result
move 	$t3, $v0#input

LOOP:
bgt	$t1, $t3, DONE	# when t1 greater than t3 branch to DONE label
mul	$t2, $t2, $t1	# multiply the counter by the result
addi	$t1, $t1, 1	# increment counter
j	LOOP

DONE:
#print message
li	$v0, 1
move	$a0, $t3
syscall
li	$v0, 4
la	$a0, f
syscall
li	$v0, 1
move	$a0, $t2
syscall

li	$v0, 10
syscall