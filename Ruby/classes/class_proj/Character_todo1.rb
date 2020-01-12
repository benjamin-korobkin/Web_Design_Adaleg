require_relative 'item.rb'

class Character
	def initialize()
		@stuff = []
	end

	def addItem(item)
		@stuff.push(item)
	end

	def removeItem(item)
		# TODO: remove the item from the player's inventory.
	end

	def hasItem(item)
		# TODO: return true if the player's inventory contains
		# the parameterized item. Return false otherwise.
	end

	def getItems
		itemString = ""
		@stuff.each do |item|
			itemString += "#{item.name}: #{item.description}\n"
		end 
		return itemString
	end

end

# Set up the items
hammer = Item.new("Hammer", "A strong hammer")
bow = Item.new("Bow","Flexible and agile")

# Set up the character
bob = Character.new()
bob.addItem(hammer)
bob.addItem(bow)
puts "Inventory:\n#{bob.getItems}"
puts "Bob has the hammer: #{bob.hasItem(hammer)}"
puts "Bob has the bow: #{bob.hasItem(bow)}"
puts "*****************"
bob.removeItem(hammer)
puts "Hammer removed..."
puts "Inventory:\n#{bob.getItems}"
puts "Bob has the hammer: #{bob.hasItem(hammer)}"
puts "Bob has the bow: #{bob.hasItem(bow)}"
puts "*****************"
bob.removeItem(bow)
puts "Bow removed..."
puts "Inventory:\n#{bob.getItems}"
puts "Bob has the hammer: #{bob.hasItem(hammer)}"
puts "Bob has the bow: #{bob.hasItem(bow)}"

# If done correctly, this code will print the following:
# Inventory:
# Hammer: A strong hammer
# Bow: Flexible and agile
# Bob has the hammer: true
# Bob has the bow: true
# *****************
# Hammer removed...
# Inventory:
# Bow: Flexible and agile
# Bob has the hammer: false
# Bob has the bow: true
# *****************
# Bow removed...
# Inventory:
# Bob has the hammer: false
# Bob has the bow: false
