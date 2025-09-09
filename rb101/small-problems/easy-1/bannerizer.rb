def print_in_box(message)
  outer_line = "+#{'-' * (message.size + 2)}+"
  inner_line = "|#{' ' * (message.size + 2)}|"
  message_line = "| #{message} |"

  puts outer_line
  puts inner_line
  puts message_line
  puts inner_line
  puts outer_line
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
