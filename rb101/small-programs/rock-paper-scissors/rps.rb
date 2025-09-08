# frozen_string_literal: true

VALID_CHOICES = %w[rock paper scissors lizard spock].freeze
RULES = {
  rock: %w[scissors lizard],
  paper: %w[rock spock],
  scissors: %w[paper lizard],
  lizard: %w[paper spock],
  spock: %w[rock scissors]
}.freeze

class Player
  attr_accessor :input, :wins

  def initialize
    @wins = 0
  end
end

def prompt(message)
  puts "=> #{message}"
end

def read_user_input
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase
    break choice if VALID_CHOICES.include?(choice)

    prompt("That's not a valid choice.")

  end
end

def win?(first, second)
  RULES[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player.input, computer.input)
    prompt('You won!')
    player.wins += 1
  elsif win?(computer.input, player.input)
    prompt('Computer won!')
    computer.wins += 1
  else
    prompt("It's a tie!")
  end
end

def determine_match_winner(user, computer, number_to_win)
  if user.wins == number_to_win
    prompt('You win the match!')
  elsif computer.wins == number_to_win
    prompt('Computer wins the match!')
  end
end

def rounds(number_to_win)
  user = Player.new
  computer = Player.new
  loop do
    user.input = read_user_input
    computer.input = VALID_CHOICES.sample

    prompt("You chose: #{user.input}, computer chose: #{computer.input}")
    display_results(user, computer)
    break if determine_match_winner(user, computer, number_to_win)
  end
end

def main
  loop do
    rounds(3)
    prompt('Do you want to play again?')
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

main
