require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess.rb'

class GuessTest < MiniTest::Test
  def setup 
    @card = Card.new('10', 'Hearts')
  end

  def test_guess_stores_the_guess_and_current_card
    guess = Guess.new('10 of Hearts', @card)

    assert_equal  @card, guess.card
    assert_equal '10 of Hearts', guess.response
  end
end