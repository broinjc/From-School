# Program 2
# Nathan Nichols

.data
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
# Texts
br:	.asciiz	"-------------------"


.text

# Convert the hex input string and return binary equivalent.
CONVRT:

# Dis-assemble opcode/funct, count it, and print out ascii equivalent.
OPCODE:  

# Dis-assemble register and print out ascii equivalent.
REGS:  

# Dis-assemble immediate value and print out DECIMAL equivalent 
# (this is easier than hex) .  You can print HEX if your wish.
IMM:  

#Dis-assemble address and print out DECIMAL or HEX equivalent.Each of 
# these procedures can be augmented with statistical gathering code 
# for the advanced tasks.
ADDR: 

# Print out the statistics.
STATS:
# total number of instructions processed

# total number of valid instructions

# total number of invalid instructions

# TASK 2......
# Number of R, I, and J type instructions.
# Register usage data (how many times each register is referenced) 