def factors(number)
  divisor = number
  factors = []
  number.times do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(-1)
p factors(0)
p factors(1)
p factors(9)
