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

def win_round?(first, second)
  RULES[first.to_sym].include?(second)
end

def win_match?(user, computer, number_to_win)
  user.wins == number_to_win || computer.wins == number_to_win
end

def display_round_winner(player, computer)
  if win_round?(player.input, computer.input)
    prompt('You won the round!')
    player.wins += 1
  elsif win_round?(computer.input, player.input)
    prompt('Computer won the round!')
    computer.wins += 1
  else
    prompt("It's a tie!")
  end
end

def display_match_winner(user, computer, number_to_win)
  if user.wins == number_to_win
    prompt('You won the match!')
  elsif computer.wins == number_to_win
    prompt('Computer won the match!')
  end
end

def rounds(number_to_win)
  user = Player.new
  computer = Player.new
  loop do
    user.input = read_user_input
    computer.input = VALID_CHOICES.sample

    prompt("You chose: #{user.input}, computer chose: #{computer.input}")
    display_round_winner(user, computer)
    break if win_match?(user, computer, number_to_win)
  end
  display_match_winner(user, computer, number_to_win)
  prompt("Final score is:
   User: #{user.wins}
   Computer: #{computer.wins}
    ")
end

def main
  loop do
    rounds(3)
    prompt('Do you want to play again (y/n)?')
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

main
