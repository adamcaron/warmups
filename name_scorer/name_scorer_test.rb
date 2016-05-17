require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './name_scorer'

class NameScorerTest < Minitest::Test

  def test_it_works_out_the_alphabetical_value_for_a_name
    name = "Al"

    assert_equal 13, NameScorer.get_alphabetical_value_for_name(name)
  end

  def test_it_scores_a_name_by_its_order_in_the_list
    names = ["Troy", "Adam", "John"]

    name_scorer = NameScorer.new(names)

    assert_equal 234, name_scorer.get_score_of_name("Troy")
  end

  # call score on a name that's not in the collection

end

# Using names.txt,
# a 46K text file containing over five-thousand first names,


# Then working out the alphabetical value for each name,
# multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53,
# is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.



# What is the total of all the name scores in the file?

