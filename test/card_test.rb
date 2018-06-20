require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'

class CardTest < Minitest::Test
  def test_card_is_created_with_value_and_suit
    card = Card.new('Ace', 'Spades')

    assert_equal 'Ace', card.value
    assert_equal 'Spades', card.suit
  end

  def test_card_has_integer_value
    card = Card.new('Ace', 'Spades')

    assert_equal 1, card.int_value

    card = Card.new('3', 'Hearts')

    assert_equal 3, card.int_value
  end
end