module Fizzbuzz
  def is_divisible_by?(num)
    self % num == 0
  end

end

class Integer
  include Fizzbuzz
end

def run
  (1..100).to_a.each do |i|
    puts 'fizzbuzz' if i.is_divisible_by?(15)
    puts 'fizz' if i.is_divisible_by?(3)
    puts 'buzz' if i.is_divisible_by?(5)
    puts i
  end
end

run