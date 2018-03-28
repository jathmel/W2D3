require 'tdd'

describe Array do

  describe '#my_uniq' do
    it 'returns unique element in a new array' do
      expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
    end
  end

  describe '#my_transpose' do
    subject(:matrix) { Array.new (
        [
          [0,1,2],
          [3,4,5],
          [6,7,8]
        ]
      )
    }

    it 'it changes row to columns and vice versa' do

      expect(matrix.my_transpose).to eq(
        [
          [0,3,6],
          [1,4,7],
          [2,5,8]
        ]
      )
    end
  end
  describe '#stock_picker' do
    subject (:stock_prices) {Array.new([4,3,6,2,8])}

    it 'finds max profit' do
      expect(stock_prices.stock_picker).to eq(6)
    end
  end


end
