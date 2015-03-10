## Description

This project is two implementations of the fizzbuzz problem, one the
traditional approach to the fizzbuzz problem, and the second a more
customizable variation on the same theme.

### Traditional

This is a simple fizzbuzz method that accepts an argument of one integer and
returns 'FizzBuzz' if the number is divisible by 3 and 5, 'Fizz' if it is
divisible by 3, 'Buzz' if it is divisible by 5, and the number itself if
it is not divisible by either 3 or 5.

With my approach I was trying to make the code easy to follow what is happening,
and also only have one way out.  I think my methodology is a little more
elegant than a long if..else chain, but also not overly criptic.

### Customizable

The file custom_fizz is a modifiable fizzbuzz like program that takes a
hash of string & integer pairs that serve as the 'answer key', and will use
this answer key to iterate over a range of numbers, from 1(I hardcoded zero into
the answer array to avoid dividing zero issues) to a specified limit.
Here's an example of how to use the program
```ruby
hash = {
  'Fizz' => 3,
  'Buzz' => 5,
  'Sivv' => 7,
  'Whiz' => 20
}
fizz = FizzBuzz.new(hash)
fizz.printer(10_000)
```
### Approach

I thought initializing the FizzBuzz instance with a has would be the best way
to allow a client or third party to customize what they want their answer key
to look like, although this program assumes that the values in the hash is
organized in numerical order, smallest first.  The processor method accepts an
argument that establishes the range of numbers that will be fizzbuzzed.  The numbers
in this range are used one by one to iterate over the initialization hash.  If
the number is evenly divisible by a value in the hash, then the correspoding key
is appended to a temporary answer storage string.  When this one number has been
checked against all values in the hash, the empty_check method is called.  This
method checks to see if the temporary answer string is empty or not.  If it is,
meaning the number in question was not evenly divisible by any value in the hash,
then the raw number from the range is added to an answer storage array. Otherwise,
the non-empty string is added to the answer array.  After this check is
done, the temporary answer string is reset and the next number in the range is
checked against the hash values.  Finally, this method returns the answer array.
The printer method uses the answer array returned from the processor method
to puts each individual value in the array to the console, for a user readable
output.

This answer was based on a whiteboard challenge I complete at Codefellows with
help from Michael Bello.

