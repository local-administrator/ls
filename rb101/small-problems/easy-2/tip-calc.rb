puts 'What is the bill?'
bill = gets.to_f
puts 'What is the tip percentage?'
tip_percent = gets.to_f

tip_amount = (bill * (tip_percent / 100))
total = (bill + tip_amount)

puts "The tip is $#{format('%.2f', tip_amount)}"
puts "The total is $#{format('%.2f', total)}"
