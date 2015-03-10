require 'spec_helper'
require 'custom_fizz'

describe FizzBuzz do
  before do
    hash = {
      'Fizz' => 3,
      'Buzz' => 5,
      'Sivv' => 7,
      'Whiz' => 20
    }
    @fizz = FizzBuzz.new(hash)
  end
  it 'should answer easy problem' do
    ans = [0, 1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 'Sivv', 8, 'Fizz', 'Buzz']
    @fizz.processor(10).must_equal(ans)
  end

  it 'should give the right answer for a complex string' do
    @fizz.processor(2100)[2100].must_equal 'FizzBuzzSivvWhiz'
  end

  it 'printer method should work' do
    proc { @fizz.printer(3) }.must_output "0\n1\n2\nFizz\n"
  end

  it 'works on large numbers' do
    @fizz.processor(50_000)[49_999].must_equal 49_999
  end
end
