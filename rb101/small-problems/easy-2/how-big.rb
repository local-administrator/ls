SQMETERS_TO_SQFEET = 10.7639

puts 'Enter the length of the room in meters:'
length = gets.to_f
puts 'Enter the width of the room in meters:'
width = gets.to_f

meters2 = (length * width).round(2)
feet2 = (meters2 * SQMETERS_TO_SQFEET).round(2)


puts "The area of the room is #{meters2} square meters (#{feet2} square feet)"
