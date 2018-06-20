class Card
  attr_reader :value, :suit, :int_value
  def initialize(value, suit)
    @value = value
    @suit  = suit
    @int_value = int_value
  end

  def int_value
    if value == 'Ace'
      @int_value = 1
    elsif value == 'Jack'
      @int_value = 11
    elsif value == 'Queen' 
      @int_value = 12
    elsif value == 'King' 
      @int_value = 13
    else
      @int_value = value.to_i
    end
  end
end