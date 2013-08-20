# Guessing game


num = rand(10)+1

puts "Guess a number between 1 and 10."

loop do
	guess = gets.to_i
	
	puts "#{guess} is too high. Guess again." if guess > num
	puts "#{guess} is too low. Guess again." if guess < num
	
	break if guess == num
end

puts "Correct!"
