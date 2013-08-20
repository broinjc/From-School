# Convert string to ascii
puts "Input string to be converted to ASCII: "
x = gets()
x.upcase!
x.each_byte do |c|
	puts c
end
