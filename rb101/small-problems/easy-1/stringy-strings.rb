def stringy(number)
  output = ''
  number.times do |index|
    output << (index.even? ? '1' : '0')
  end
  output
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
