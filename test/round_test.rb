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
end