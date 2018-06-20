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
    if correct?
      'Correct!'
    else
      'Incorrect!'
    end
  end

  def guessed_card
    Card.new(response_elemnets.first, response_elemnets.last)
  end

  def response_elemnets
    response.split
  end
end