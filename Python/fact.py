def fact(n):
	l = int(n)
	if l == 0:
		return 1
	else:
		return l * fact(l-1)

a = raw_input("Enter a number: ")

print fact(a)
