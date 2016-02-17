require_relative './stock_picker'
describe Stockpicker do
	
  it 'reverses stock_values [1,7,3,9] and returns [9,3,7,1]' do
	 stocks = Stockpicker.new
	 result = stocks.reverse_values([1,7,3,9])
	 expect(result).to eq [9,3,7,1]
  end
end
