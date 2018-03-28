require_relative 'card'

class Deck
  SUITES = [:diamond, :spade, :heart, :club]
  RANKS = [
    :two,
    :three,
    :four,
    :five,
    :six,
    :seven,
    :eight,
    :nine,
    :ten,
    :jack,
    :queen,
    :king,
    :ace
  ]
  def self.build_stack
    cards = []
    SUITES.each do |suite|
      RANKS.each do |rank|
        cards << Card.new(suite, rank)
      end
    end
    cards
  end

  attr_reader :stack

  def initialize
    @stack = Deck.build_stack
  end

  def take(num)
    cards = []

    num.times do
      cards << stack.pop
    end

    cards
  end

  # def shuffle!
  #   stack.shuffle!
  # end



end
