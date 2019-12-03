emptyArray = [] # creates an empty array
numbers = [1,  2, 3, 4, 5]
puts "The element at index 1 is: #{numbers[1]}" # This is equal to 2

puts "The element at index 0 is: #{numbers[0]}" # This is equal to 1

puts numbers[3] # This equals 4
puts numbers[4] # This equals 5
Say i want to add the number 10 at the end of our numbers array
numbers[5] = 10

numbers[5] # This is now 10

puts "The element at index 4 was #{numbers[4]}"

numbers[4] = 25

puts "The element at index 4 is now #{numbers[4]}"

# puts numbers
print "Insert your own value: "
numbers[6] = gets.chomp
puts numbers[6]

# The .each method
how = "how"
oh = ["me", 'my', how]

oh.each do |value|
	print oh
end