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

  def test_deck_can_be_merge_sorted
    assert_equal [@card_2, @card_1, @card_3], @deck.merge_sort
  end

  def test_deck_can_sort_larger_deck
    lotsa_cards = [
      Card.new("Ace","Clubs"),
      Card.new("2","Clubs"),
      Card.new("3","Clubs"),
      Card.new("4","Clubs"),
      Card.new("5","Clubs"),
      Card.new("6","Clubs"),
      Card.new("7","Clubs"),
      Card.new("8","Clubs"),
      Card.new("9","Clubs"),
      Card.new("10","Clubs"),
      Card.new("Jack","Clubs"),
      Card.new("Queen","Clubs"),
      Card.new("King","Clubs"),
      Card.new("Ace","Diamonds"),
      Card.new("2","Diamonds"),
      Card.new("3","Diamonds"),
      Card.new("4","Diamonds"),
      Card.new("5","Diamonds"),
      Card.new("6","Diamonds"),
      Card.new("7","Diamonds"),
      Card.new("8","Diamonds"),
      Card.new("9","Diamonds"),
      Card.new("10","Diamonds"),
      Card.new("Jack","Diamonds"),
      Card.new("Queen","Diamonds"),
      Card.new("King","Diamonds"),
      Card.new("Ace","Hearts"),
      Card.new("2","Hearts"),
      Card.new("3","Hearts"),
      Card.new("4","Hearts"),
      Card.new("5","Hearts"),
      Card.new("6","Hearts"),
      Card.new("7","Hearts"),
      Card.new("8","Hearts"),
      Card.new("9","Hearts"),
      Card.new("10","Hearts"),
      Card.new("Jack","Hearts"),
      Card.new("Queen","Hearts"),
      Card.new("King","Hearts"),
      Card.new("Ace","Spades"),
      Card.new("2","Spades"),
      Card.new("3","Spades"),
      Card.new("4","Spades"),
      Card.new("5","Spades"),
      Card.new("6","Spades"),
      Card.new("7","Spades"),
      Card.new("8","Spades"),
      Card.new("9","Spades"),
      Card.new("10","Spades"),
      Card.new("Jack","Spades"),
      Card.new("Queen","Spades"),
      Card.new("King","Spades"),
    ]
    lotsa_cards.shuffle!
    large_deck = Deck.new(lotsa_cards)
    p large_deck

    puts 'Sorted Cards:'
    p large_deck.merge_sort
  end
end