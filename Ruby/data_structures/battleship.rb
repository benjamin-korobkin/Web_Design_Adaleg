def show_map(grid, plyrShips=0, enemyShips=0)
	row=0
	puts "   0123456789   "
	for x in grid do
		print "#{row} |"
		for y in x do
			if y == 'C' then 
				print ' ' # Comment for debugging
			else
				print y
			end
		end
		print "| #{row}\n"
		row += 1

	end
	puts "   0123456789   \n"
	if plyrShips > 0 && enemyShips > 0 then
		puts "\nPlayer ships: #{plyrShips} | Enemy ships: #{enemyShips}"
	end
end

def plyr_turn(grid, plyrShips, enemyShips) # Method for the player's turn
	puts "\nYOUR MOVE"
	guessed = false
	while !guessed do
		print "Select a row: "
		x = gets.chomp.to_i
		print "Select a col: "
		y = gets.chomp.to_i
		hit = grid[x][y]
		if hit == '@' then
			puts "You can't attack your own ship you masochist. Try again."
		elsif hit == '-' || hit == 'X' then
			puts "That target's already been hit ya dum dum. Try again."
		elsif hit == ' ' then
			puts "\nYou MISSED!\n\n"
			grid[x][y] = '-'
			guessed = true
		else
			puts "\nA HIT! You sunk my battleship!"
			grid[x][y] = 'X'
			return "enemyHit"
			# guessed = true
		end
	end
	# show_map(grid, plyrShips, enemyShips)
end

def enemy_turn(grid, plyrShips, enemyShips) # Method for the enemy's turn
	guessed = false
	while !guessed do
		x = rand(10)
		y = rand(10)
		hit = grid[x][y]
		if hit == ' ' then
			puts "\nThe enemy attacked... and MISSED!"
			grid[x][y] = '-'
			guessed = true
		elsif hit == '@' then
			puts "\nThe enemy attacked... and SUNK YOUR BATTLESHIP!"
			grid[x][y] = 'X'
			return "playerHit"
			# guessed = true
		end
	end
	# show_map(grid, plyrShips, enemyShips)
end

puts "\n*********************************\n     WELCOME TO BATTLESHIP\n*********************************"
puts "\nRight now, the sea is empty.\n\n"



grid = [
[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' '],
[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' '],
[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' '],
[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' '],
[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' '],
[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' '],
[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' '],
[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' '],
[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' '],
[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' ']
]

show_map(grid)

# First, the player deploys ships...
# plyr_ships = []
puts "\nDeploy your ships:"
ship = 1
while ship <= 5 do
	print "Enter row for ship no. #{ship}: "
	x = gets.chomp.to_i
	print "Enter col for ship no. #{ship}: "
	y = gets.chomp.to_i
	
	if x < 0 || x > 9 || y < 0 || y > 9 then
		puts "That's off the map! You can only enter places 0-9"
	elsif grid[x][y] == "@" then
		puts "You have a ship there already! Try again."
	else
		grid[x][y] = "@"
		# plyr_ships[ship] = 
		ship += 1
	end
end
puts "\nHere's your updated map:\n\n"
plyrShips = 5
enemyShips = 5
show_map(grid, plyrShips, enemyShips)

# Now the enemy will deploy ships...
ship = 1
while ship <= 5 do
	x = rand(10)
	y = rand(10)
	if (grid[x][y] == ' ') then
		grid[x][y] = 'C'
		ship += 1
	end
end


puts "\nThe enemy has placed their ships as well..."
# show_map(grid) # Uncomment for debugging

gameOver = false
while !gameOver do
	if plyr_turn(grid, plyrShips, enemyShips) == "enemyHit" then
		enemyShips -= 1
		if (plyrShips == 0) || (enemyShips == 0) then
			break
		end
	end
	show_map(grid, plyrShips, enemyShips)
	puts "Press any key to continue"
	gets.chomp
	
	if enemy_turn(grid, plyrShips, enemyShips) == "playerHit" then
		plyrShips -= 1
		if (plyrShips == 0) || (enemyShips == 0) then
			break
		end
	end
	show_map(grid, plyrShips, enemyShips)
	puts "Press any key to continue"
	gets.chomp
end
	
if enemyShips == 0 then
	puts "YOU WIN!!!"
else 
	puts "YOU LOSE!!!"
end
