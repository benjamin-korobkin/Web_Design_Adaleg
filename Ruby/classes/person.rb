class Person 
	# attr_accessor allows you to both read (get) and
	# write (set) the attributes
	def initialize(name, weight, height)
		@name = name
		@speed = 0
		@weight = weight
		@height = height
		@grade = ""
	end

	# def weight
	# 	return @weight
	# end

	# def height
	# 	return @height
	# end

	def grade=(grade)
		@grade = grade
	end

	# attr_reader acts as your 'getters'
	# attr_reader :weight, :height
	
	# attr_writer acts as your 'setters'
	# attr_writer :grade

	# Functions as both attr_reader (getter) & attr_writer (setter)
	attr_accessor :name, :speed, :grade, :weight, :height

end

person1 = Person.new("Adam", 100, 6)
puts "#{person1.name} is #{person1.height} feet tall"
puts "#{person1.name} weighs #{person1.weight}kg"
puts person1.speed # 0
person1.speed = 10
puts person1.speed

person1.grade = 'A'