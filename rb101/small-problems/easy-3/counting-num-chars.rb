puts 'Please write word or multiple words:'
user_input = gets.chomp
count = user_input.delete(' ').size
puts "There are #{count} characters in \"#{user_input}\"."
