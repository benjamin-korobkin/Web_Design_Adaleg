print "Give me a story: "
story = gets.chomp

arr = story.split(" ")

# SOLUTION 1
# for x in arr do 
#   if x.include?("e") then
#     x = "CENSORED"
#   end
#   print "#{x} "
# end

# SOLUTION 2
for x in 0...arr.length do
  if arr[x].include?("e") then
    arr[x] = "CENSORED"
  end
  print "#{arr[x]} "
end
