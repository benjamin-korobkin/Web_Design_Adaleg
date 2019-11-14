# even or odd
# Print out the one number that isn't like the rest
def oddOrEven(arr)
  even = false
  evenCnt = 0
  for i in 0..2 do
    if arr[i] % 2 == 0 then
      evenCnt += 1
    end
  end

  if evenCnt > 1 then
    even = true
    for x in arr do
      if x % 2 != 0 then
        return x
      end
    end
  else
    for x in arr do
      if x % 2 == 0 then
        return x
      end
    end
  end

end

puts oddOrEven([1,2,4,6]) # 1
puts oddOrEven([9,7,11,12]) # 12
puts oddOrEven([30,100,31,32]) # 31
