# frozen_string_literal: true
#
print 'What is your name? '
name = gets.chomp

if name.end_with?('!')
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
