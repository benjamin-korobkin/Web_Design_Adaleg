class Room

	def initialize(roomName, description)
		@name = roomName
		@exits = {}
		@description = description
	end

	attr_reader :name, :description

	def setExits(nExit, eExit, sExit, wExit)
		@exits = {
			"north" => nExit,
			"east" => eExit,
			"south" => sExit,
			"west" => wExit
		}
	end

	def nextRoom(direction)
		# TODO: Explain to BJ how you think
		# this method works
		return @exits[direction]
	end
end
