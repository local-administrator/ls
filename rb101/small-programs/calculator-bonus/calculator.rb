require 'i18n'

I18n.load_path << Dir[File.join(__dir__, 'locales', '*.yml')]
I18n.default_locale = :en

# ------------------------------------------
# REQUIREMENTS
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result
# ------------------------------------------

#-------------------------------------------
# HELPER METHODS
# ------------------------------------------

# messages passed to the prompt method should be defined in 'locales/*.yml'
# any variables or expressions described in our original string interpolations
# need to pass in as additional arguments
def prompt(message, **args)
  Kernel.puts("=> #{I18n.t(message, **args)}")
end

# refactored from original program since logic was repetitive
# converted to helper method to keep main loop clean
def obtain_number(position)
  num = ''
  loop do
    prompt('number_prompt', position: position)
    num = Kernel.gets.chomp

    if valid_number?(num)
      num = num.to_f
      break
    else
      prompt('invalid_number')
    end
  end
  num
end

# simplified number validation with float type conversion
def valid_number?(num)
  Float(num)
rescue ArgumentError
  false
end

# we convert float -> int upon displaying output back to user
# if the output should be an int (ex: 30.0)
def display(result)
  result % 1 == 0 ? result.to_i : result
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

def perform_computation(operator, num1, num2)
  case operator
  when '1'
    num1 + num2
  when '2'
    num1 - num2
  when '3'
    num1 * num2
  when '4'
    num1 / num2
  end
end

#-------------------------------------------
# MAIN
# ------------------------------------------
prompt('welcome')
loop do
  num1 = obtain_number('first')
  num2 = obtain_number('second')

  prompt('operation_prompt')

  operator = ''
  loop do
    operator = Kernel.gets.chomp
    break if %w[1 2 3 4].include?(operator)

    prompt('invalid_operator')
  end

  prompt('operation_message', action: operation_to_message(operator))
  result = perform_computation(operator, num1, num2)
  prompt('result', value: display(result))
  prompt('user_confirmation')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('bye')
