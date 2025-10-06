print 'Provide a name: '
name = gets.chomp
name = 'Teddy' if name.empty?
age = rand(20..200)
puts "#{name.capitalize} is #{age} years old!"
