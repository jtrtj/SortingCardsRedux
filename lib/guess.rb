require './lib/card.rb'

class Guess
  attr_reader :response, :card
  def initialize(response, card)
    @response = response
    @card     = card
  end
end