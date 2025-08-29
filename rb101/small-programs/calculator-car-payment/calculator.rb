# frozen_string_literal: true

require 'i18n'

I18n.load_path << Dir[File.join(__dir__, 'locales', '*.yml')]
I18n.default_locale = :en # (note that `en` is already the default!)

def prompt(message, **args)
  puts("=> #{I18n.t(message, **args)}")
end

def get_monthly_interest_rate(apr)
  (apr / 100) / 12
end

def get_car_payment(loan_amount, monthly_interest, loan_duration)
  loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_duration)))
end

prompt('welcome_message')
prompt('loan_amount')
loan_amount = gets.to_i
prompt('apr')
apr = gets.to_f
prompt('loan_duration')
loan_duration = gets.to_i

monthly_interest = get_monthly_interest_rate(apr)
monthly_payment = get_car_payment(loan_amount, monthly_interest, loan_duration)

prompt('result', monthly_payment: monthly_payment.round(2))
