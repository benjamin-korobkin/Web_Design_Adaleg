# Store user fields
fields = []

print "Enter your full name: "
full_name = gets.chomp
until full_name.include?(" ") do
	print "Invalid name. Try again: "
	full_name = gets.chomp
end
fields[0] = "Full name: #{full_name}"

print "Enter your email: "
email = gets.chomp

while !email.include?("@")
	print "Invalid email! Try again: "
	email = gets.chomp
end
puts "Email: #{email}"
print "Confirm your email: "
email_confirm = gets.chomp
until email_confirm == email do
	print "That doesn't match. Try again: "
	email_confirm = gets.chomp
end
fields[1] = "Email: #{email}"

print "Enter your username: "
username = gets.chomp

while username.length < 8 || username.length > 16 || username.include?(" ")
	print "Invalid username. Must be 8-16 chars, no spaces! Try again: "
	username = gets.chomp
end
puts "Username: #{username}"
fields[2] = "Username: #{username}"

print "Enter your password: " 
password = gets.chomp

while password.length < 12 || password.downcase == password
	print "Invalid password. Must be at least 12 characters & one uppercase letter: "
	password = gets.chomp
end

puts "Password: #{password}"
fields[3] = "Password: #{password}"

puts "You have successfully registered!"
puts "Your fields are: "
for field in fields do
	puts field
end
