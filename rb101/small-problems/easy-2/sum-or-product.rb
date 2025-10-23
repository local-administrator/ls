def integer_string?(str)
  str.to_i.to_s == str
end

def request_number
  loop do
    puts 'Please enter an integer greater than 0:'
    number = gets.chomp
    return number.to_i if integer_string?(number) && number.to_i.positive?

    puts 'Invalid input. Try again.'
  end
end

def request_computation_type
  loop do
    puts "Enter 's' to compute the sum, or 'p' to compute the product."
    computation = gets.chomp.downcase
    return computation if %w[s p].include?(computation)

    puts "Invalid input. Please enter 's' or 'p'."
  end
end

def compute_sum(number)
  sum = 0
  1.upto(number) { |num| sum += num }
  sum
end

def compute_product(number)
  product = 1
  1.upto(number) { |num| product *= num }
  product
end

def display_result(number, computation)
  if computation == 's'
    sum = compute_sum(number)
    puts "The sum of the integers between 1 and #{number} is #{sum}"
  elsif computation == 'p'
    product = compute_product(number)
    puts "The product of the integers between 1 and #{number} is #{product}"

  end
end

number = request_number
computation = request_computation_type
display_result(number, computation)
