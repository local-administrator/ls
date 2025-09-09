PROMPT_ACTION = {
  1 => 'Enter a noun: ',
  2 => 'Enter a verb: ',
  3 => 'Enter an adjective: ',
  4 => 'Enter an adverb: '
}

print PROMPT_ACTION[1]
noun = gets.chomp

print PROMPT_ACTION[2]
verb = gets.chomp

print PROMPT_ACTION[3]
adjective = gets.chomp

print PROMPT_ACTION[4]
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
