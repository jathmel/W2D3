require 'hand'

describe Hand do
  subject(:hand) {Hand.new}
  describe'#initialize' do
    it 'creates empty hand' do
      expect(hand.cards).to eq([])
    end
  end

  describe '#two_pair'
end
