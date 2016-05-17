class WordRotation
  def word_rotation?(word_1, word_2)
    (word_1 * 2).include?(word_2)
  end
end

rotator = WordRotation.new
puts rotator.word_rotation?("apple", "pplea")