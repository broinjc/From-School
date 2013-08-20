.data
get	.ascii	"ente"
two:	.ascii	" * 2: "
three:	.ascii	" * 3: "
i:	.word	0

.text

# 


li	$v0, 5	# read an integer
syscall

# input is in $v0

# print $v0 * 3
add	$a0, $v0, $v0,
add	$a0, $a0, $v0,
li	$v0, 1	# print the content of $a0
syscall



li	$v0, 10 # exit program gracefully
syscall