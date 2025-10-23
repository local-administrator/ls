# frozen_string_literal: true

def negative(number)
  -number.abs
end

# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0 # There's no such thing as -0 in Ruby
