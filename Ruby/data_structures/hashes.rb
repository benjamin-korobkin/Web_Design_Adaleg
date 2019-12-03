# Ruby Hashes

# myHash = {

# 	"key" => 10

# }

# myVar = myHash["key"]
# puts myVar # what will this print?

# grades = {
# 	"BJ" => 69,
# 	"Shmuli" => 79,
# 	"Yossi" => 109  
# }

# puts grades["BJ"]

# grades = {
# 	"Yehuda"=> 89,
# 	"Jacob"=> 89,
# 	"Avraham"=> 88,
# 	"Pinchas"=> 79
# }

# # Change Pinchas's grade to 81
# grades["Pinchas"] = 81

# # Add a value
# grades["Menachem"] = 75

# # Delete a key-value pair
# grades.delete("Menachem")

# # Delete the value
# grades["Pinchas"] = nil

# # Assigned a string value to a key
# grades["Instructor"] = "Elvis"

# # Print out the grades in a nice way
# for k,v in grades do
# 	if v == "Elvis" then
# 		puts "Your instructor is #{v}"
# 	else
# 		puts "Student: #{k} Grade: #{v}"
# 	end
# end

# puts grades

# Arrays example

# array = [1, 2, 3]

# for x in array do
# 	puts x
# end

# Inventory partial solution

# def inventory(a)

# 	for k,v in a do
# 		puts "#{k} is the key. #{v} is the value."
# 	end

# end

someHash = {
	"item1" => "description",
	"item2"	=> "other description",
	"item3" => "third description"
}

# inventory(someHash)

# items = Hash.new # items = {}

# print "Give me an item: "
# user_item = gets.chomp

# print "How many do you have? "
# amount = gets.chomp.to_i

# items[user_item] = amount
# user_item is the key
# and amount is the value

# After the above,
items == {user_item => amount}

# puts "{\n\t#{user_item} => #{amount}\n}"



# cars = {
# 	"features" => {"kpg" => 15,	"color" => "red"}
# }

