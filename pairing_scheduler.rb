devs = %w(Alex, Bernadette, Charles, Dana, Eddie, Fernanda, Gus, Hiro)

pairs = []

# create 7 non-repeating pairs

devs.map do |dev|
  pairs << [devs[0], dev]
end

puts devs