words = "SHENANIGANS SALTY YOUNGSTER ROUND DOUBLET TERABYTE ESSENCE".split(" ")

down_words = []
across_words = []

check = 0
while check < words.length
  if check.odd?
    down_words << words[check]
    check += 1
  elsif
    across_words << words[check]
    check += 1
  end
end

def down_word_buffer(across_word, down_word, buffer)
  times = 0
  down_word = down_word[1..-2]

  while times < down_word.length
    puts " " * (buffer) + down_word[times]
    times += 1
  end
end

def across_word_buffer(across_word_former, across_word, buffer)
  puts " " * (buffer) + across_word
end

stage = 0
puts across_words[stage]
buffer = across_words[stage].length - 1
words.length.times do
  down_word_buffer(across_words[stage], down_words[stage], buffer)
  across_word_buffer(across_words[stage], across_words[stage + 1], buffer)
  buffer += across_words[stage + 1].length - 1
  stage += 1
end