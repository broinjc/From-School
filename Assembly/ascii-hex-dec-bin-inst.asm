.data
hex:	.asciiz "13D\n"
inst:	.space 8
eq:	.asciiz " = "
.text
la	$s0, hex
la	$s1, inst

hex2inst:
# get a byte
lb	$a0, 0($s0)

# examine it
beq	$a0, 0xA, nl	# /n
bge	$a0, 65, char	# char
ble	$a0, 57, num 	# num

# offset ascii and store
char:
sub	$a0, $a0, 55
j store			# skip num if it was a char
num:
sub	$a0, $a0, 48
store:
sb	$a0, 0($s1)
addi	$s0, $s0, 1
addi	$s1, $s1, 1
j hex2inst

nl:
la 	$s1, inst # reset

# load a decimal to be converted to binary
lb	$a0, 2($s1)
li      $v0, 1                               #Print digit TODO
syscall
# equals
la	$a0, eq
li	$v0, 4
syscall

lb	$a2, 2($s1)
addi	$t1, $0, 2 # base 2
hex2bin:
divu      $a2, $t1                             #LO = $t1/2, HI = $t1 % 2
mfhi      $t2                                  #$t2 = HI (remainder)
mflo      $t0                                  #$t0 = $t1/2 (quotient)
# print
move      $a0, $t2                             #store digit to print
li        $v0, 1                               #Print digit TODO
syscall
move	$a2, $t0
bnez    $t0, hex2bin                          #if input != 0, keep dividing


li	$v0, 10
syscall
