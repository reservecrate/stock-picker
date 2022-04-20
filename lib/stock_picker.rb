require 'debug'

class StockPicker
  def stock_picker(ary)
    result_ary = []
    max = 0
    ary.each_with_index do |x, i|
      ary_slice = ary[i, ary.length - i]
      ary_slice.each do |y|
        max = y - x and result_ary = [i, ary.find_index(y)] if y - x > max
      end
    end
    result_ary
  end
end

stock = StockPicker.new
p stock.stock_picker([17, 3, 6, 9, 5, 8, 16, 1, 2]) => # [1, 6]