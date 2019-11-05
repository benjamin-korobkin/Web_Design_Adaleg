print "Give a number between 1 and 10: " 
input = gets.chomp.to_i

while input < 1 || input > 10
	puts "That's not what I asked..."
	print "Give me something between 1 and 10: "
	input = gets.chomp.to_i
end

puts "You entered the number #{input}"