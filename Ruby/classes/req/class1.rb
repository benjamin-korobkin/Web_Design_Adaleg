# No getters and setters
# Use readers and writers

class A

	def initialize(isSloppy)
		@slippery = true
		@gooey = false
		@sloppy = isSloppy
	end

	def sloppy
		return @sloppy
	end

end

slime = A.new(true)
puts slime.sloppy
wax = A.new(false)
puts wax.sloppy