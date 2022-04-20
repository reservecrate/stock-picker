require 'stock_picker'

describe StockPicker do
  describe '#stock_picker()' do
    it '[17,3,6,9,15,8,6,1,10] => [1, 4]' do
      expect(subject.stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq [1, 4]
    end
  end
end
