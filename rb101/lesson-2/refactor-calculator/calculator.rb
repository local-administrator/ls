# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when 1
    'Adding'
  when 2
    'Subtracting'
  when 3
    'Multiplying'
  when 4
    'Dividing'
  end
end

prompt('Welcome to Calculator!')
loop do # main loop
  num1 = ''
  loop do
    prompt('What\'s the first number?')
    num1 = Kernel.gets.to_i

    if valid_number?(num1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  num2 = ''
  loop do
    prompt('What\'s the second number?')
    num2 = Kernel.gets.to_i

    if valid_number?(num1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  prompt("What operation would you like to perfom?
  1. add
  2. subtract
  3. multiply
  4. divide")

  operator = ''
  loop do
    operator = Kernel.gets.to_i
    break if [1, 2, 3, 4].include?(operator)

    prompt('Must choose 1, 2, 3, or 4')
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  case operator
  when 1
    result = num1 + num2
  when 2
    result = num1 - num2
  when 3
    result = num1 * num2
  when 4
    result = num1.to_f / num2
  end

  prompt("The result is #{result}")

  prompt('Do you want to perform another calculation? (Y to calculate again)')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using the calculator. Good bye!')
