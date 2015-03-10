# FizzBuzz class to hold processor and printer methods
class FizzBuzz
  attr_reader :hash
  def initialize(hash)
    @hash = hash
  end

  def processor(limit)
    ans = [0]
    (1..limit).each do |number|
      string = ''
      hash.each do |key, value|
        string += key if number % value == 0
      end
      empty_check(ans, number, string)
      string = ''
    end
    ans
  end

  def printer(limit)
    processor(limit).each do |number|
      puts number
    end
  end

  private

  def empty_check(ans_array, number, string)
    if string.empty?
      ans_array << number
    else
      ans_array << string
    end
  end
end
