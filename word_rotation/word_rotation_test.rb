require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './word_rotation'

class WordRotationTest < Minitest::Test
  def test_it_exists
    word_rotation = WordRotation.new

    assert word_rotation.kind_of?(WordRotation)
  end

  def test_apple_is_a_rotation_of_apple
    word_rotation = WordRotation.new

    assert_equal true, word_rotation.word_rotation?("apple", "apple")
  end

  # pplea is a rotation of apple
  # pleap is a rotation of apple
  # paple is not a rotation of apple
  # elppa is not a rotation of apple
end