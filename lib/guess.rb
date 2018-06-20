require './lib/card.rb'

class Guess
  attr_reader :response, :card
  def initialize(response, card)
    @response = response
    @card     = card
  end

  def correct?
    guessed_card.value == card.value && guessed_card.suit == card.suit
  end

  def feedback
    correct? ? 'Correct!' : 'Incorrect.'
  end

  def guessed_card
    Card.new(response_elements.first, response_elements.last)
  end

  def response_elements
    response.split
  end
end