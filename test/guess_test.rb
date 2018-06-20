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

  def  guess_can_be_split_into_value_and_suit
    guess = Guess.new('10 of Hearts', @card)

    assert_equal '10', guess.response_elements.first
    assert_equal 'Hearts', guess.response_elements.last
  end

  def guess_can_create_guessed_card
    guess = Guess.new('10 of Hearts', @card)

    assert_instance_of Card, guess.guessed_card
    assert_equal '10', guess.guessed_card.value
    assert_equal 'Hearts', guess.guessed_card.suit
  end

  def test_guess_can_tell_if_it_is_correct
    guess = Guess.new('10 of Hearts', @card)

    assert guess.correct?

    guess = Guess.new('9 of Spades', @card)

    refute guess.correct?
  end

  def test_guess_has_feedback
    guess = Guess.new('10 of Hearts', @card)

    assert_equal 'Correct!', guess.feedback

    guess = Guess.new('9 of Spades', @card)

    assert_equal 'Incorrect.', guess.feedback
  end
end