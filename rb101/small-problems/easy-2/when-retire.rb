print 'What is your age? '
age = gets.to_i
print 'At what age would you like to retire? '
retire_age = gets.to_i

current_year = Time.now.year
years_to_go = retire_age - age
retire_year = current_year + years_to_go

puts "It's #{current_year}. You will retire in #{retire_year}"
puts "You only have #{years_to_go} years of work to go!"
