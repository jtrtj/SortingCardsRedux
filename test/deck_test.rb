require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck.rb'
require './lib/card.rb'

class DeckTest < MiniTest::Test
  def setup
    @card_1 = Card.new("4","Hearts")
    @card_2 = Card.new("3", "Clubs")
    @card_3 = Card.new("5", "Diamonds")
    @deck = Deck.new([@card_1, @card_2, @card_3])
  end

  def test_deck_has_cards_in_an_array
    assert_equal [@card_1, @card_2, @card_3], @deck.cards
  end

  def test_deck_can_be_counted
    assert_equal 3, @deck.count
  end

  # def test_deck_can_be_merge_sorted
  #   assert_equal [], @deck.merge_sort
  # end
  def test_deck_can_sort_card_values
    assert_equal [3, 4, 5], @deck.merge_sort_card_values
  end

  def test_deck_can_make_list_of_card_values
    assert_equal [4, 3, 5], @deck.list_of_card_values
  end
end