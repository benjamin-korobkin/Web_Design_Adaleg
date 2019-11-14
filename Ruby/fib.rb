def fib(n)

  num0 = 0
  num1 = 1
  if n == 1 then
  return num0
  elsif n == 2 then
  return num1
  else
    
    for x in 1..(n-2) do
      num2 = num0 + num1
      num0 = num1
      num1 = num2
    end
  end
  return num2
end

puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(5)
puts fib(6)
puts fib(7)
puts fib(8)
