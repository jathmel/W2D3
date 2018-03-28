class Array
    def my_uniq
      uniq = []
      self.each do |el|
        uniq << el unless uniq.include?(el)
      end
        uniq
    end

    def my_transpose
      result = []

      self.each_with_index do |row, i|
        new_row = []

        row.each_index do |j|
          new_row << self[j][i]
        end

        result << new_row
      end

      result
    end

    def stock_picker
      lowest = self[0]
      max_profit = nil

      each do |price|
        if price < lowest
          lowest = price
        else
          profit = price - lowest
          max_profit = profit if max_profit == nil || profit > max_profit
        end
      end
      max_profit
    end


  end
