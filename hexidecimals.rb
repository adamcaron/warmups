# Given a hex-color input, like #F6336A,
# figure out the dominant resulting color, like "red" here.
# Implementing "red", "green", and "blue" should be easy-ish,
# but can you handle variations like "purple" (high blue + red)?

# Post your solution in #warmup-answers

# ff0000 is red
# 00ff00 is green
# 0000ff is blue

value_order = [0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"]

hex = "F6336A"
colors = hex.chars
red = puts colors[0..1].join # 23
green = puts colors[2..3].join  # 8
blue = puts colors[4..5].join # 19

# the color is red dominant
value_hash = {0 => 0}

# value_hash
#  => {0=>0, 1=>2, 2=>2, 3=>3, 4=>4, 5=>5, 6=>6, 7=>7, 8=>8, 9=>9, "a"=>10, "b"=>11, "c"=>12, "d"=>13, "e"=>14, "f"=>15}
# 2.2.1 :016 > red = value_hash["f] + value_hash["d"]
# 2.2.1 :017"> red
# 2.2.1 :018"> red = value_hash["f] + value_hash["d"]^C
# 2.2.1 :018 > red = value_hash["f"] + value_hash["d"]
#  => 28