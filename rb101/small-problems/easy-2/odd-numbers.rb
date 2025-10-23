# frozen_string_literal: true

# option 1
number = 1
while number <= 99
  puts number
  number += 2
end

# option 2
1.step(99, 2) { |num| puts num }
