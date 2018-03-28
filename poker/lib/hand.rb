require_relative 'card'


class Hand
  attr_reader :cards

  def initialize
    @cards = []
  end
end
