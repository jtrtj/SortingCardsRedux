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
    
  end

  def merge_sort_card_values
    mergesort(list_of_card_values)
  end
  
  def list_of_card_values
    @cards.map do |card|
      card.value.to_i
    end
  end
end
