.data

# This is a MIDI program, only works in MARS, it plays 
# MIDI notes together using code 31, or in sequence 
# using syscall code 33

.text

li	$s0, 0
li	$s1, 34


out:
#### ha
li	$a0, 42		# pitch (0-127)
li	$a1, 400	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### ppy
li	$a0, 42		# pitch (0-127)
li	$a1, 400	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 127	# volume (0-127)
li	$v0, 33
syscall

#### birth
li	$a0, 44		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### day
li	$a0, 42		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### to
li	$a0, 47		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### you
li	$a0, 46		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

####################################

#### happy
li	$a0, 42		# pitch (0-127)
li	$a1, 400	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### birth
li	$a0, 42		# pitch (0-127)
li	$a1, 400		# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 127	# volume (0-127)
li	$v0, 33
syscall

#### day
li	$a0, 44		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### to
li	$a0, 42		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### you
li	$a0, 49		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

####
li	$a0, 47		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

####################################

#### hap
li	$a0, 42		# pitch (0-127)
li	$a1, 400	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### py
li	$a0, 42		# pitch (0-127)
li	$a1, 400	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 127	# volume (0-127)
li	$v0, 33
syscall

#### birth
li	$a0, 54		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### day
li	$a0, 47		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### dear
li	$a0, 44		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

####
li	$a0, 46		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

####
li	$a0, 42		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

####
li	$a0, 54		# pitch (0-127)
li	$a1, 900	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### so and
li	$a0, 54		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### so
li	$a0, 54		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### hap
li	$a0, 47		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### py
li	$a0, 42		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### birth
li	$a0, 44		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall

#### day 
li	$a0, 42		# pitch (0-127)
li	$a1, 600	# duration in milliseconds
li	$a2, 1		# instrument (0-127)
li	$a3, 100	# volume (0-127)
li	$v0, 33
syscall
