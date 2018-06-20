class Round
  attr_reader :deck, :guesses
  def initialize(deck)
    @deck    = deck
    @guesses = []
  end

  def current_card
    deck.cards.first
  end

  def record_guess(guess)
    guesses << Guess.new(guess, current_card)
    @deck.cards.shift
    guesses.last
  end

  def number_correct
   correct_guesses.count
  end

  def percent_correct
    (number_correct.to_f / guesses.count.to_f) * 100
  end

  def correct_guesses
    @guesses.find_all do |guess|
      guess.correct?
    end
  end
end