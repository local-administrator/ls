# frozen_string_literal: true

# option 1
number = 2
while number <= 99
  puts number
  number += 2
end

# option 2
(2..99).step(2) { |num| puts num }
