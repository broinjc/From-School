.data

Array:	.word	2, 4, 6, 1

.text

la	$s6, Array
li	$s0, 0		# i
li	$s1, 0		# j
li	$s2, 4		# Array length

# for(int i = 0; i < length(Array); ++i){
#	for(int j = 0;j < length(Array) - 1; ++j){
#		if(Array[i] < Array[j]){
#			Array[i] = Array[i] + Array[j];
#			Array[j] = Array[i] - Array[j];
#			Array[i] = Array[i] - Array[j];
#		}
#	}
# }

loopi:
	beq	$s0, $s2, done	# if i = Array length goto done	
loopj:
	blt	0
done:
