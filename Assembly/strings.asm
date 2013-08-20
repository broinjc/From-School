.data
x:	.ascii	"hello"
.text
la	$s0, x
li	$v0, 4
syscall