def add(a, b)
  return a + b
end

puts add(1,2)

# print "Give me a num: "
# num1 = gets.chomp.to_i
# print "Give me another: "
# num2 = gets.chomp.to_i

# puts add(num1, num2)

def weirdo
  return "Hello there!"
  puts "Weirdo..."  # We never reach this line...
end
 
# We try to always 'return' in Ruby, 
# but it will work even without the actual word
def implicit_return
  "I came back without you telling me to return!"  
end

# ADVANCED
# We can give default values to parameters
def default_mult(num0 = 5, num1 = 12)
  return num0 * num1
end

# puts default_mult
