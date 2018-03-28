require "towers_of_hanoi"

describe Game do
  subject(:game) {Game.new}

  describe "#initialize" do

    it "makes an array of three towers" do
      expect(game.towers).to eq(
        [
          [3, 2, 1],
          [],
          []
        ]
      )
    end
  end

  describe "#move" do

    it "moves peg from start tower to end tower" do
      game.move(0, 1)
      expect(game.towers).to eq(
        [
          [3, 2],
          [1],
          []
        ]
      )
    end

    it "raises error when moving larger peg onto smaller peg" do
      game.move(0, 1)

      expect{ game.move(0,1) }.to raise_error("can't move larger peg on to smaller peg")
    end

  end

  describe "won?" do

    it "returns false unless all pegs have been moved to an end tower" do
      expect(game.won?).to be false
    end

    it "returns true when all pegs have been moved to a single end tower" do
      game.move(0,2)
      game.move(0,1)
      game.move(2,1)
      game.move(0,2)
      game.move(1,0)
      game.move(1,2)
      game.move(0,2)

      expect(game.won?).to be true
    end
  end
end
