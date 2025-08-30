# frozen_string_literal: true

require 'i18n'

I18n.load_path << Dir[File.join(__dir__, 'locales', '*.yml')]
I18n.default_locale = :en # (note that `en` is already the default!)

def prompt(message, **args)
  puts("=> #{I18n.t(message, **args)}")
end

def get_monthly_interest_rate(apr)
  (apr.to_f / 100) / 12
end

def get_car_payment(loan_amount, monthly_interest, loan_duration)
  loan_amount.to_f * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_duration.to_i)))
end

def valid_number?(number)
  Float(number) >= 0
rescue ArgumentError
  false
end

def get_user_input(item)
  loop do
    prompt(item)
    input = gets.chomp
    return input if valid_number?(input)

    prompt('invalid_number')
  end
end

def main
  loop do
    prompt('welcome_message')
    loan_amount = get_user_input('loan_amount')
    apr = get_user_input('apr')
    loan_duration = get_user_input('loan_duration')

    monthly_interest = get_monthly_interest_rate(apr)
    monthly_payment = get_car_payment(loan_amount, monthly_interest, loan_duration)

    prompt('result', monthly_payment: monthly_payment.round(2))
    prompt('repeat')
    repeat = gets.chomp
    break unless repeat.downcase.start_with?('y')
  end
  prompt('bye')
end

main
