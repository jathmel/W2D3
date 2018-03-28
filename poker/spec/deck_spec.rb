require "deck"

describe Deck do
  subject(:deck) {Deck.new}

  describe '#initialize' do
    it 'makes a stack of 52 items' do
      expect(deck.stack.length).to be 52
    end
    it 'fills the deck with cards' do
      all_cards = deck.stack.all? {|el| el.class == Card}
      expect(all_cards).to be true
    end
    it 'ensures all cards are unique' do
      all_uniq = true
      deck.stack.each_with_index do |card, i|
        ((i+1)...(deck.stack.size)).each do |j|
          other_card = deck.stack[j]
          unless (card.value != other_card.value) || (card.suite != other_card.suite)
            all_uniq = false
          end
        end
      end
      expect(all_uniq).to be true
    end
  end

  # describe '#shuffle!' do
  #   it 'it shuffles the cards' do
  #     original_stack = deck.stack
  #     deck.shuffle!
  #     expect(deck.stack).to_not eq(original_stack)
  #     expect(deck.stack.sort).to eq(original_stack.sort)
  #   end
  # end
  describe "#take" do
    it "takes num cards from the deck" do
      deck.take(3)

      expect(deck.stack.length).to be 49
    end
  end

end
