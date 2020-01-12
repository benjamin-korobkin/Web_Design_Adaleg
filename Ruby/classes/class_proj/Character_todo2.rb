require_relative 'item.rb'

# TODO
class Character
	# TODO: Add a currRoom attribute to Character 
	# (The character's current room)
	def initialize()
		@stuff = []
	end

	def addItem(item)
		@stuff.push(item)
	end

	def removeItem(item)
		@stuff.delete(item)
	end

	def hasItem(item)
		return @stuff.include?(item)
	end

	def getItems
		itemString = ""
		@stuff.each do |item|
			itemString += "#{item.name}: #{item.description}\n"
		end 
		return itemString
	end

	def go(direction)
		# Here, we utilize the nextRoom(direction) method from the
		# Room class to move the character to another room (see below
		# where we call our go(direction) method)
		nextRoom = currRoom.nextRoom(direction)
		# TODO: if nextRoom is nil, puts a msg saying the 
		# character can't go there. Otherwise, place the
		# character in that room.
		# HINT: Check the room class to see what the nextRoom(dir)
		# method is doing. See if you can figure it out on your own.
	end

	attr_reader :currRoom
end

# Set up the rooms
classroom = Room.new("Classroom", "An empty classroom")
outdoors = Room.new("Outdoors", "The great outdoors")
classroom.setExits(nil, nil, outdoors, nil)
outdoors.setExits(classroom, nil, nil, nil)

# Set up the items
hammer = Item.new("Hammer", "A strong hammer", classroom)
bow = Item.new("Bow","Flexible and agile", outdoors)

# Set up the character
bob = Character.new(classroom)

puts bob.currRoom.name # should print "classroom"
bob.go("south") # Move Bob south
puts bob.currRoom.name # should print "outdoors"
bob.go("north") # Move Bob north
puts bob.currRoom.name
bob.go("south") # Move Bob south again
puts bob.currRoom.name