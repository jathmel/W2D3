class Card
  attr_reader :value, :suite, :symbol

  VALUES = {
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    ten: 10,
    jack: 11,
    queen: 12,
    king: 13,
    ace: 14
  }

  def initialize(suite, symbol)
    @suite = suite
    @symbol = symbol
    @value = VALUES[symbol]
  end

  
end
