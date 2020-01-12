# Item

class Item
	# TODO: Add a room attribute to the item class
	def initialize(nam, desc)
		# attribute for the item
		@description = desc
		@name = name
	end

	attr_reader :description, :name

end