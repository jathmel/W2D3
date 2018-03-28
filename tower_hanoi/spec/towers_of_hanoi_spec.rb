require "towers_of_hanoi"

describe Game do
  subject(:game) {Game.new}

  describe "#initialize" do

    it "makes an array of three towers" do
      expect(game.towers).to eq(
        [
          [1, 2, 3],
          [],
          []
        ]
      )
    end
  end

  describe "#move" do

    context "when start tower is empty" do
      let(:valid_move) { double }
      it "raises an error" do
        allow(valid_move)
      end
    end
  end
end
