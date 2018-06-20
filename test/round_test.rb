require 'minitest/autorun'
require 'minitest/pride'
require './lib/round.rb'
require './lib/deck.rb'
require './lib/guess.rb'
require './lib/card.rb'

class RoundTest < MiniTest::Test
  def setup
    @card_1 = Card.new("3","Hearts")
    @card_2 = Card.new("4", "Clubs")
    @deck = Deck.new([@card_1, @card_2])
    @round = Round.new(@deck)
  end

  def test_round_has_a_deck
    assert_equal @deck, @round.deck
  end

  def test_round_starts_with_no_guesses
    assert_equal [], @round.guesses
  end

  def test_round_can_check_current_card
    assert_equal @card_1, @round.current_card
  end

  def test_round_can_record_a_guess
    actual = @round.record_guess('3 of Hearts')
    expected = @round.guesses.last

    assert_equal expected, actual
  end
end