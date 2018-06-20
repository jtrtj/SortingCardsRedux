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
    @deck.shift
    guesses.last
  end

  def number_correct
    @guesses.inject(0) do |number, guess|
      if guess.correct?
        number + 1
      end
    end
  end
end