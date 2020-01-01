# Create a Room with classes

# You will be creating a building strucutre that allows
# a user to navigate from room to room.
# Focusing on the room first, think about what attributes a 
# room has.
# From our example
# exits, description, roomID (to uniquely ID every room)

# Examples of roomID could be kitchen, laundry room, dining room,
# library, etc...

# Exercise 1: Create a class called Room that has the attributes
# described above: exits, description, roomID/Name

# Exercise 2: Create an object called classroom using your
# Room class. The classroom needs 1 exit, a description and
# roomID (or name) called "classroom"

class Room

	def initialize(roomName, description)
		@roomName = roomName
		@exits = {}
		@description = description
	end

	def getName
		return @roomName
	end

	def getDesc
		return @description
	end

	def setExits(nExit, eExit, sExit, wExit)
		exits = {
			"north" => nExit,
			"east" => eExit,
			"south" => sExit,
			"west" => wExit
		}
	end
end

class Person

	def initialize(room)
		@currentRoom = room
	end

	def go(exit)
		@currentRoom = exit
	end

	def getRoom
		return @currentRoom
	end
end

classRoom = Room.new("Classroom", "An empty classroom")
outside = Room.new("Outside", "The great outdoors")

classRoom.setExits(nil, nil, outside, nil)
outside.setExits(classRoom, nil, nil, nil)

person = Person.new(classRoom)
puts person.getRoom.getName
person.go(outside)
puts person.getRoom.getName


