# def fullPyramid(rows)
#     stars = 1
#     rows.downto(1) do |i| # highNumbers.downto(lowNumber) do |i| end
#         for j in i..rows do
#             print "*"
#         end 
#         puts ""
#     end 

# end 
# print "How many rows does your structure have? "
# rows = gets.chomp.to_i
# fullPyramid(rows)

# Data Structures

# Examples of what we're talkin 'bout

#print "How many lines does your structure have? "
def fullPyramid(lines)

	spaces = lines - 1

	for i in 1..lines*2
    	if i % 2 != 0 then
       		print " " * spaces
       		print "*" * i
        	puts
        	spaces -= 1
    	end
    end
end

print "How many rows in your structure? "
fullPyramid(gets.chomp.to_i)


# rectangle = [
# 	["*","*","*"],
# 	["*","*","*"],
# 	["*","*","*"]
# ]

# for i in rectangle do
# 	for j in i do # 
# 		print j
# 	end
# 	puts ""
# end

# stars = ["*","*","*"]
# for x in stars do
# 	print x # 
# end

# print "how many stars in the array? "
# amt = gets.chomp
# for x in amt do
# 	stars[x] = "*"
# end
# stars = ["*","*","*","*","*"] 

def rectangle(lines) # 3
  for i in 1..lines do # 3 rows
    for j in 1..lines do # 3 columns
      print "*"
    end
    puts ""
  end
end
#rectangle(gets.chomp.to_i)






# Print half a pyramid
def halfPyramid(lines)
  for i in 1..lines do
    for j in 1..i do
      print "*"
    end
    puts ""
  end
end

# halfPyramid(gets.chomp.to_i)
# Protip: can use j.downto(i) for reversal of for loop iteration.


"""
Hint for building a pyramid:
To do so, create spaces on either side
of the star(s) which decrease as the 
num of starts goes up. 
Start with one star, then +2, +2, etc.
Think: how many spaces do we start with..?
"""



# CHALLENGE: Print a full pyramid
def pyramid(lines)
	amtLines = lines
	spaces = amtLines - 1
	stars = 1
	while amtLines > 0 do
	  for i in 1..amtLines do
	    print " " * spaces
	    print "*" * stars
	    puts " "
	    amtLines -= 1
	    spaces -= 1
	    stars += 2
	  end
	end
end
# pyramid(gets.chomp.to_i)



"""
Hint to build a diamond:
Once you figure out how to build the pyramid,
this is just doing it twice in a row. Except this time,
You first build the pyramid, and then start backwards
building another one.
"""
# BONUS CHALLENGE: Print a diamond
def diamond(lines)
	amtLines = lines
	spaces = amtLines - 1
	stars = 1
	while amtLines > 0 do
	  for i in 1..amtLines do
	    print " " * spaces
	    print "*" * stars
	    puts " " * spaces
	    amtLines -= 1
	    spaces -= 1
	    stars += 2
	  end
	end

	amtLines = lines
	spaces = 1
	stars = (amtLines * 2)-3
	while amtLines > 0 do
	  for i in 1...amtLines do
	    print " " * spaces
	    print "*" * stars
	    puts " " * spaces
	    amtLines -= 1
	    spaces += 1
	    stars -= 2
	  end
	  break
	end
end
#diamond(gets.chomp.to_i)

# Building an hourglass, basically reverse diamond
def hourglass(lines)
	amtLines = lines
	spaces = 0
	stars = (amtLines * 2)-1
	while amtLines > 0 do
	  for i in 1...amtLines do
	    print " " * spaces
	    print "*" * stars
	    puts " " * spaces
	    amtLines -= 1
	    spaces += 1
	    stars -= 2
	  end
	  break
	end

	amtLines = lines
	spaces = amtLines - 1
	stars = 1
	while amtLines > 0 do
	  for i in 1..amtLines do
	    print " " * spaces
	    print "*" * stars
	    puts " " * spaces
	    amtLines -= 1
	    spaces -= 1
	    stars += 2
	  end
	end
end

# hourglass(gets.chomp.to_i)