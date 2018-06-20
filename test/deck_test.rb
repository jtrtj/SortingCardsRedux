require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck.rb'
require './lib/card.rb'

class DeckTest < MiniTest::Test
  def setup
    @card_1 = Card.new("3","Hearts")
    @card_2 = Card.new("4", "Clubs")
    @card_3 = Card.new("5", "Diamonds")
    @deck = Deck.new([@card_1, @card_2, @card_3])
  end

  def test_deck_has_cards_in_an_array
    assert_equal [@card_1, @card_2, @card_3], @deck.cards
  end

  def test_deck_can_be_counted
    assert_equal 3, @deck.count
  end
end