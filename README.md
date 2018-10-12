# SortingCardsRedux

Second try at a Turing mod 1 project. This project really got the best of me and I learned a lot by failing to complete it. This repo is my second try at it over the break between mod 1 and 2.

> code snippet of a Ruby Merge Sort implementation. In this project it was used to sort a deck of cards:

```ruby
module MergeSort
  def mergesort(cards)
    return cards if cards.length<= 1
    mid   = cards.size / 2
    left  = cards[0...mid]
    right = cards[mid...cards.size]
    merge(mergesort(left), mergesort(right))
  end

  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left.first.int_value <= right.first.int_value
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    sorted.concat(left).concat(right)
  end
end
```
> And here is the test I wrote to test the MergeSort module:
```ruby
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
```
