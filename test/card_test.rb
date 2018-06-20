require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'

class CardTest < Minitest::Test
  def test_card_is_created_with_value_and_suit
    card = Card.new('Ace', 'Spades')

    assert_equal 'Ace', card.value
    assert_equal 'Spades', card.suit
  end
end