def display_prompt(number)
  case number
  when 1
    puts "Enter the #{number}st number:"
  when 2
    puts "Enter the #{number}nd number:"
  when 3
    puts "Enter the #{number}rd number:"
  else
    puts "Enter the #{number}th number:"
  end
end

user_numbers = []
(1..6).each do |num|
  display_prompt(num)
  user_numbers << gets.to_i
end

last_number = user_numbers.pop

if user_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{user_numbers.inspect}"
else
  puts "The number #{last_number} does not appear in #{user_numbers.inspect}"
end
