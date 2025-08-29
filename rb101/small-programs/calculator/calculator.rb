# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

Kernel.puts('Welcome to Calculator!')

Kernel.puts('What\'s the first number?')
num1 = Kernel.gets.to_i

Kernel.puts('What\'s the second number?')
num2 = Kernel.gets.to_i

Kernel.puts("What operation would you like to perfom?
1. add
2. subtract
3. multiply
4. divide")
operator = Kernel.gets.to_i

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

Kernel.puts("The result is #{result}")
