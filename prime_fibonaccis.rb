require 'prime'
# Generates the first 100 numbers in the Fibonacci sequence
# Prints them out one-by-one as it generates them
# Outputs whether they are or are not prime numbers


quantity = 100
sequence = [0, 1]

until sequence.count == quantity
  next_number = sequence.last(2).inject(:+)
  sequence << next_number
end

sequence = sequence.map do |x|
  if Prime.prime?(x)
    "#{x} (prime)"
  else
    "#{x}"
  end
end