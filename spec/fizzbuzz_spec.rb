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

  context 'Integers will response to an extended method called contains? and return true or false accordingly' do
    let(:digits) { (1..9).to_a }
    let(:contained) { digits.sample(2) }
    let(:integer) { contained.first * 10 + contained.last }

    it 'returns true if an integer contains given digit' do
      contained.each do |c|
        expect(integer.contains?(c)).to be_truthy
      end
    end

    it 'returns false if an integer does not contain given digit' do
      (digits - contained).each do |c|
        expect(integer.contains?(c)).to be_falsey
      end
    end
  end

  context 'Integer will response to an extended method called fizzbuzz and return the right output' do
    it 'returns fizzbuzz if an integer can be divided by 15' do
      expect(15.fizzbuzz).to eq 'fizzbuzz'
    end

    it 'returns fizz if an integer can be divided by 3' do
      expect(3.fizzbuzz).to eq 'fizz'
    end

    it 'returns buzz if an integer can be divided by 5' do
      expect(5.fizzbuzz).to eq 'buzz'
    end

    it 'returns itself if an integer can not be divided by either 3 or 5' do
      expect(14.fizzbuzz).to eq 14
    end


  end
end