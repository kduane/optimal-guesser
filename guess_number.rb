def guess_number(min, max)
  # You can call the `check` method with a number to see if it
  # is the hidden value.
  #
  # If the guess is correct, it will return 0.
  # If the guess is too high, it will return 1.
  # If the guess is too low, it will return -1.
  #
  # If you call `check` too many times, the program will crash.
  #
  # e.g. if the hidden number is 43592, then
  #
  # check(50000) # => 1
  # check(40000) # => -1
  # check(43592) # => 0
  #
  # When you've figured out what the hidden number is, return it
  # from this method.

  #######################
  # YOUR CODE GOES HERE #
  #######################
  min = min
  max = max
  guess = (min + max) / 2

  while (min <= max)
    guess = (min + ((max - min )/ 2))
    # binding.pry
    if check(guess) == 1
      min = (guess + 1)
    elsif check(guess) == -1
      max = (guess - 1)
    else
      return guess
    end

  end

  nil
end
