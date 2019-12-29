# class Language
#   def initialize(languageName, creator)
#     @name = languageName
#     @creator = creator
#     @myParam = "someStr"
#   end
	
#   def description
#     puts "I'm #{@name} and I was created by #{@creator}!"
#   end
# end

# ruby = Language.new("Ruby", "Yukihiro Matsumoto")
# python = Language.new("Python", "Guido van Rossum")
# javascript = Language.new("JavaScript", "Brendan Eich")

# ruby.description
# python.description
# javascript.description

class Car
	
	def initialize(color, seats, hp)
		 # attribute
		@color = color
		@seats = seats # attribute
		@speed = 0 # attribute
		@horsepower = hp # attribute
	end

	def accelerate 
		@speed += 20
	end

	def turbo
		@horsepower = @speed * 2.5
	end

	def getSpeed
		return @speed
	end

	def setSpeed(newSpeed)
		@speed = newSpeed
	end

	def getHp
		return @horsepower
	end

end

# ferrari = Car.new("red", 4, 800)
# puts ferrari.getSpeed # @speed
# ferrari.accelerate # @speed == 20
# puts ferrari.getSpeed
# ferrari.setSpeed(30)

# 
# x = 5 
# while x > 0 do
# 	honda_civic.accelerate
# 	x -= 1
# end
# # honda_civic.accelerate
# puts honda_civic.getSpeed
# puts honda_civic.getHp
# honda_civic.turbo # horsepower is now speed * 1.5
# puts honda_civic.getHp.to_i





# Attribute creation OPTION 1 
# class Car
	
# 	def initialize
# 		@color = "white"
# 	end

# 	def setColor(newColor)
# 		@color = newColor
# 	end
# end



# Attribute creation OPTION 2 
# class Car
	
# 	def initialize(color)
# 		@color = color
# 	end

# end

# print "What color do you want? "
# userColor = gets.chomp
# tesla = Car.new(userColor)



class Animal
    def initialize(kilos, colour, breed, car)
        @kilos = kilos
        @colour = colour
        @breed = breed
        @speed = 0
        @car = car
    end 

    def running
        @speed += 5
    end

    def getSpeed
        return @speed
    end

    def setSpeed(newSpeed)
        @speed = newSpeed
    end

    def getKilos
    	return @kilos
    end

    def setKilos(newKilos)
    	@kilos = newKilos
    end

    def getCarSpeed
    	return @car.getSpeed
    end
    
end

# Created from the Car class
honda_civic = Car.new("blue", 4, 150)
lambo = Car.new("thunder red", 2, 700)

dog = Animal.new(5, "beige", "Dobermann", honda_civic)
cat = Animal.new(4, "black", "Leo", lambo)
puts cat.getCarSpeed
puts dog.getCarSpeed

# Create a method to reduce the kilos of all animals
# def reduce(animal)
# 	animal.getkilos / 2
# end