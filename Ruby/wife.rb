# Get wife stats for weekly bar graph.

require 'date'
require 'csv'

puts "1-10\n"
puts "Health: "
he = gets.to_i
puts "Peace: "
pe = gets.to_i
puts "Beauty: "
be = gets.to_i

csv = CSV.new("wd.csv")
csv << [Date.today, he,pe,be]


