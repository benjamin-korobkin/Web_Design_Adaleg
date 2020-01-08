require_relative 'item.rb'
# Character
class Character
	def initialize
		@stuff = []
	end
	# attr_accessor
	# attr_reader
	def addItem(item)
		@stuff.push(item)
	end

	# TODO
	# have this method print
	# out each item's name
	# and description
	def getItems
		return @stuff
	end
end


hammer = Item.new("This is a strong hammer")
bow = Item.new("Flexible and agile")
bob = Character.new()
bob.addItem(hammer)
bob.addItem(bow)
bob.getItems.each do |item|
	puts item.desc
end 