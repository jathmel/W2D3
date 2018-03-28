require "card"

describe Card do
  subject(:card) { Card.new(:diamond, :jack) }

  describe "#initialize" do

    it "assigns a suite" do
      expect(card.suite).to eq(:diamond)
    end

    it "assigns a symbol" do
      expect(card.symbol).to eq(:jack)
    end

    it "assigns a value" do
      expect(card.value).to be 11
    end

  end
end
