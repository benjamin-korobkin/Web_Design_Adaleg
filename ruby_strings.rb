print "Gimme a nice string:" 
name = gets.chomp
name.strip! # remove extraneous whitespace
#puts name.empty? # check for empty string
name.capitalize! # ...
name = name.gsub(" ", "")
testIt = name.reverse.downcase
if testIt == name.downcase then
  puts "OMG it's backwards!"
else
  puts "not a pally"
end