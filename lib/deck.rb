require './lib/merge_sort.rb'

class Deck
  include MergeSort
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def merge_sort
    mergesort(@cards)
  end

end
