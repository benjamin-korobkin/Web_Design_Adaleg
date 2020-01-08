# Item

class Item

	def initialize(desc)
		# TODO add a simple name
		# attribute for the item
		@description = desc
	end

	def desc
		return @description
	end

end

hammer = Item.new("This is a strong hammer")
# puts hammer.desc