def fizz_buzz(num)
  output = ''
  output += 'Fizz' if num % 3 == 0
  output += 'Buzz' if num % 5 == 0
  output.empty? ? num : output
end
