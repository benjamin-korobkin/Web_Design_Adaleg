def validStr(str)

  str = str.split("")
  upset = 0 
  str.each do |x|
    if x == "[" then
      upset += 1
    elsif x == "]" then
      upset -= 1
    end
    if upset < 0 then 
      return false
    end
  end
  if upset == 0 then
    return true
  else
    return false
  end
end

puts validStr("") # true
puts validStr("[") # false
puts validStr("]") # false
puts validStr("[]") # true
puts validStr("[][][]") # true
puts validStr("[[]") # false
puts validStr("[]]][[") # false
puts validStr("][") # false
