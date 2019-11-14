def anagram(str1, str2)
  
  str1.downcase! # What happens if we remove the "!"?
  str2.downcase!
  first = str1.gsub(" ","")
  first = first.split("").sort
  second = str2.gsub(" ","")
  second = second.split("").sort

  if first == second then
    return true
  else
    return false
  end
end

puts anagram("brat","bart") # true
puts anagram("toy", "boy") # false
puts anagram("mother in law", "hitler") # false
puts anagram("hitler woman", "mother in law") # true
puts anagram("Elvis", "Lives") # true
