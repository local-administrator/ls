def center_of(text)
  middle = (text.size / 2)
  text.size.odd? ? text[middle] : text[middle - 1..middle]
end

puts center_of('I love Ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
