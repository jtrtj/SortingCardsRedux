require 'minitest/autorun'
require 'minitest/pride'
require './lib/merge_sort.rb'

class FakeDeck
  include MergeSort
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end
end

class MergeSortTest < MiniTest::Test
  def test_it_can_merge_sort
    test_deck = FakeDeck.new([1,3,5,45,8,1,23])
    p test_deck.cards
    p test_deck.mergesort(test_deck.cards)
    assert_equal [1,1,3,5,8,23,45], test_deck.mergesort(test_deck.cards)
  end
end