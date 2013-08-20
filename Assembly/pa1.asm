# cis314: PA1 Nathan Nichols

.data
names:	.space	120						# allocate 6 bytes for each of 20 stocks
prices:	.word	0:20 						# allocate 20 words initialized to 0
wel:	.asciiz	"Welcome!\nEnter how many stocks you have.\n"
req:	.asciiz "Enter the four character NASDAQ abbreviation and price for each stock.\n"
buy0:	.asciiz "You have entered "
buy1:	.asciiz	" stock abbreviations and prices. How many stocks do you want to buy?\n"
sell:	.asciiz "How many stocks do you want to sell?\n"
port:	.asciiz "Your portfolio includes:\n"
s:	.asciiz "Sell: "
b:	.asciiz "Buy: "

.text

main:
la	$s0, names
la	$s1, prices
	
	# Welcome the user, request number of stocks
	la	$a0, wel
	li	$v0, 4
	syscall
	#### Get integer
	li	$v0, 5
	syscall	
	#sll	$s0, $v0, 1	# s0 = v0 * 2
	move	$t0, $v0
	
	# Request stocks
	la	$a0, req
	li	$v0, 4
	syscall
	
		
get: 
	beq	$t0, $zero, got # loop $s0 times.
	
		#### get name
		move	$a0, $s0
		li	$a1, 6
		li	$v0, 8
		syscall
		
		addi	$s0, $s0, 6

	
		#### get price
		li	$v0, 5
		syscall
		
		sw	$v0, 0($s1)
		addi	$s1, $s1, 4

	addi	$t0, $t0, -1	# --$s0
	j get

got:
	li	$v0, 10
	syscall




print:

	# print array names 4 chars at a time ?
	
