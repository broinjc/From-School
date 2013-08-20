############################################################################
# PROGRAM 1  
# Example of a simple loop
# Program to print the integers 1 to 10
############################################################################
        .data

        .globl  __start
        .text
__start:

# c code would be: for (i=1; i<= 10; i++) printf(" %d",i)
    
        li      $s0,1           # $s0 holds index of loop

loop:	
# print this element
        move    $a0,$s0         # load value to print with syscall
        li      $v0,1           # load code for print integer
        syscall                 # print it
  	
# NOTE: really ugly output! Can you fix it?

# set up for next iteration
        add     $s0,$s0,1       # get next in list
        ble     $s0,10,loop     # finished whole list? if not, go back around

# done
out:    li      $v0,10
        syscall

############################################################################
# PROGRAM 2  
# Example of another loop
# Program to print the first n Fibbonacci Numbers
############################################################################

           .data
Prompt:    .asciiz          "How many Fibonacci numbers would you like?  "
Newline:   .asciiz          "\n"

           .text
           .globl __start

# t1 is required number of iterations
# t2 is number of iterations so far
# s1 holds current Fibbonacci number
# s2 holds next Fibbonacci number

__start:
# print prompt for user number
         li         $v0,4       #load syscall number for writing a string
         la         $a0,Prompt  #load address of string to write
         syscall                #write string

# read user's number
        li          $v0,5       #load syscall number for reading a number
        syscall                 #read number

# print desired number of Fibbonacci numbers
# initialize for while loop
        move    $t1,$v0         # save required number of iterations in t1
        li      $t2,0           # number of this iteration
        li      $s1,1
        li      $s2,1

#Check for more to print?
LOOP:   bge     $t2,$t1,DONE
# not done, print next one
        li      $v0,1           #load the syscall number for writing an integer
        move    $a0,$s1         #load the integer
        syscall                 #write the integer
        li      $v0,4           #load the syscall number for writing a string
        la      $a0,Newline     #load the address of the string
        syscall                 #write the string

#increment for next iteration
        add     $s0,$s1,$s2     #get next Fibbonacci number
        move    $s1,$s2         #update s1 and s2
        move    $s2,$s0

        addi    $t2,$t2,1       #increment interation count
        j       LOOP

DONE:
# end program
        li      $v0,10          #load the syscall number for terminating
        syscall                 #terminate

############################################################################
# PROGRAM 3
# Loop to sum an array of 10 elements
# Note method of array indexing
############################################################################

            .data

OutLn:      .asciiz         "The sum is "

# start with array values already there to shorten example
List:       .word           11, 12, 13, 14, 15, 16, 17, 18, 19, 20

            .globl  __start
            .text
__start:

# initialize for loop

        la      $s0,List        # $s0 holds current address in array
        add     $s1,$s0,36      # $s1 holds address of last element
	
        li      $s2,0           # initialize sum
	

loop:   bgt     $s0,$s1,out     # summed entire array?

# no, get this element
        lw      $t0,0($s0)      # load element value
        add     $s2,$s2,$t0     # add into sum
  	
# set up for next iteration
        add     $s0,$s0,4       # get address of next element
        j       loop            # go back around

# sum completed, print it
out:    la      $a0,OutLn       # print text
        li      $v0,4
        syscall

        move    $a0,$s2         # print sum
        li      $v0,1
        syscall

end:    li      $v0,10          # end it 
        syscall
	

############################################################################
# PROGRAM 4
# Almost the same loop to sum an array of 10 elements
# Note different method of array indexing
############################################################################

        .data

OutLn:  .asciiz         "The sum is "

# start with array values already there to shorten example
List:   .word           11, 12, 13, 14, 15, 16, 17, 18, 19, 20

        .globl  __start
        .text
__start:

# initialize for loop

        li      $s0,0           # $s0 holds current offset in array
        li      $s1,36          # $s1 holds last offset in array
	
        li      $s2,0           # initialize sum
	

loop:   bgt     $s0,$s1,out     # summed entire array?

# no, get this element
        lw      $t0,List($s0)   # load element value
        add     $s2,$s2,$t0     # add into sum
  	
# set up for next iteration
        add     $s0,$s0,4       # get address of next element
        j       loop            # go back around

# sum completed, print it
out:    la      $a0,OutLn       # print text
        li      $v0,4
        syscall

        move    $a0,$s2         # print sum
        li      $v0,1
        syscall

end:    li      $v0,10          # end it 
        syscall
	