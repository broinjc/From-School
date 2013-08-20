# Program 2
# Nathan Nichols

.data
# File info
ascii_vals:		.space	500
asciiDec:		.space	1
binaryInst:		.space	4
in:			.asciiz	"pa2_sample.in"
cr:			.asciiz "\n"
# Instructions
inr:	.asciiz	"Instruction not recognized"
add:	.asciiz	"add" 
addi:	.asciiz	"addi"
or:	.asciiz	"or"
ori:	.asciiz	"ori"
j:	.asciiz "j"
beq:	.asciiz	"beq"
lw:	.asciiz "lw"
sw:	.asciiz	"sw"
jr:	.asciiz	"jr"
jal:	.asciiz "jal"

# text
stmt:	.asciiz	"Stmt"
objc:	.asciiz "Obj Code"	
asc:	.asciiz "Assembly Code"		
abso:	.asciiz	"Absolute"
insc:	.asciiz "Instruction Counts"
numi:	.asciiz	"Number of instructions: "
numl:	.asciiz "Number of legal instructions: "
numu:	.asciiz "Number of unrecognizable instructions: "
instnr:	.asciiz "Instruction not recognized"
dol:	.asciiz "$"
parenl:	.asciiz "("
parenr:	.asciiz ")"
comma:	.asciiz","
br:	.asciiz	"-------------------"

.text
main:
li	$t1, 2 # dec2bin uses this
####################
#                  #
#  Open the file   #
#                  #
####################
OPEN_FILE:
li	$v0, 13 # open a file
la	$a0, in	# name of the file to open
li	$a1, 0	# read the file
li	$a2, 0
syscall
move	$s0, $v0 # save the file description
READ_FILE:
li	$v0, 14
move	$a0, $s0	# file descriptor
li	$a2, 300	# read 13 instructions
la	$a1, ascii_vals	# into a space
syscall

la	$s0, ascii_vals
la	$s1, asciiDec	# this will store a single ascii char in decimal format


###############################
#                             #
#  Convert the hex to binary. #
#                             #
###############################
CONVRT:

hex2dec:
# eat a byte of ascii
lb	$a1, 0($s0)

# digesting...
beq	$a1, 0xA, nl	# /n
bge	$a1, 65, char	# char
ble	$a1, 57, num 	# num

# offset ascii, convert to binary, and store
char:
sub	$a1, $a1, 55
j store			# skip num if it was a char
num:
sub	$a1, $a1, 48

store:
move	$a2, $a1	# a2 = dec val

jal dec2bin

addi	$s0, $s0, 1

j hex2dec

# Convert $t0 (dec) to binary

lb	$a2, 0($s1)
dec2bin:
divu    $a2, $t1                             #LO = $a2 / 2, HI = $a2 % 2
mfhi    $t2                                  # %2
mflo    $t0                                  # /2
# print
move    $a0, $t2                             #store digit to print
li      $v0, 1                               #Print digit TODO
syscall

move	$a2, $t0
bnez    $t0, dec2bin                          #if input != 0, keep dividing
jr	$ra

# Dis-assemble opcode/funct, count it, and print out ascii equivalent.
OPCODE:  
# 


# Dis-assemble register and print out ascii equivalent.
REGS:  

# Dis-assemble immediate value and print out DECIMAL equivalent 
# (this is easier than hex) .  You can print HEX if your wish.
IMM:  

#Dis-assemble address and print out DECIMAL or HEX equivalent.Each of 
# these procedures can be augmented with statistical gathering code 
# for the advanced tasks.
ADDR: 
nl:
CLOSE_IN_FILE:
li	$v0, 16
move	$a0, $s0
syscall

# Print out the statistics.
STATS:
# total number of instructions processed

# total number of valid instructions

# total number of invalid instructions

# TASK 2...
# Number of R, I, and J type instructions.
# Register usage data (how many times each register is referenced)
