module Fizzbuzz
  def fizzbuzz
    return 'fizzbuzz' if self.is_divisible_by?(15)
    return 'fizz' if self.is_divisible_by?(3) || self.contains?(3)
    return 'buzz' if self.is_divisible_by?(5) || self.contains?(5)
    self
  end

  def is_divisible_by?(num)
    self % num == 0
  end

  def contains?(digit)
    self.to_s.include?(digit.to_s)
  end
end

class Integer
  include Fizzbuzz
end

def run
  (1..100).to_a.each do |i|
    puts i.fizzbuzz
  end
end

run