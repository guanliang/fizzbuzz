require 'fizzbuzz'

describe 'Fizzbuzz' do

  let(:multiple) { rand(10) + 1 }

  context 'Integers will response to an extended method called is_divisble_by? and return true or false' do
    it 'returns true if the integer can be divided by the provided number' do
      expect((3 * multiple).is_divisible_by?(3)).to be_truthy
    end

    it 'returns false if the integer can not be divided by the provided number' do
      expect((3 * multiple).is_divisible_by?(11)).to be_falsey
    end
  end
end