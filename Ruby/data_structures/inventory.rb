# Inventory Assignment

def inv(stockHash)
	temp_arr = []
	puts "This is your stock: #{stockHash}"
	print "How many items are being updated? "
	num = gets.chomp.to_i
	for cnt in 0...num
		print "Gimme an item: "
		item = gets.chomp
		if temp_arr.include?(item) then
			puts "WARNING! This item was recently entered."
		end
		temp_arr[cnt] = item
		if stockHash.include?(item) then
			puts "We currently have #{stockHash[item]} of those"
		end

		print "How many #{item} do we got now? "
		amt = gets.chomp.to_i
		stockHash[item] = amt
	end
	return stockHash
end

stockHash = Hash.new
stockHash["computer"] = 12
puts "Here's your updated stock: #{inv(stockHash)}"

def inv

end