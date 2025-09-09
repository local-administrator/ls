# frozen_string_literal: true

def triangle(star_count)
  1.upto(star_count) do |star|
    puts "#{' ' * (star_count - star)}#{'*' * star}"
  end
end

triangle(5)
triangle(9)
