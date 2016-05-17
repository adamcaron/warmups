class Allergy
  attr_reader :allergy_values

  def initialize
    @allergy_values = {
      cats: 128,
      pollen: 64,
      chocalate: 32,
      tomatoes: 16,
      strawberries: 8,
      shellfish: 4,
      peanuts: 2,
      eggs: 1
    }
  end

  def score(integer)
    allergies = []
    @allergy_values.each do |k, v|
      if integer >= v
        allergies << k.to_s
        integer -= v
      end
    end
    allergies
  end
end

gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './allergy'

class AllergyTest < Minitest::Test

  def test_that_keys_have_values
    allergy = Allergy.new
    assert_equal 1, allergy.allergy_values[:eggs]
  end

  def test_it_returns_allergies_for_scores
    assert_equal ["peanuts"], Allergy.new.score(2)
    assert_equal ["shellfish"], Allergy.new.score(4)
    assert_equal ["shellfish", "eggs"], Allergy.new.score(5)
    assert_equal ["shellfish", "peanuts", "eggs"], Allergy.new.score(7)
    assert_equal ["strawberries", "shellfish", "peanuts", "eggs"], Allergy.new.score(15)
    assert_equal ["cats"], Allergy.new.score(128)
  end
end