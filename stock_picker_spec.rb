require_relative './stock_picker'
describe Stockpicker do
	
  it 'reverses stock_values [1,7,3,9] and returns [9,3,7,1]' do
	 stocks = Stockpicker.new
	 result = stocks.reverse_values([1,7,3,9])
	 expect(result).to eq [9,3,7,1]
  end

  it 'reverses stock_values [10, 8, 4, 3] and returns [3,4,8,10]' do
	 stocks = Stockpicker.new
	 result = stocks.reverse_values([10,8,4,3])
	 expect(result).to eq [3,4,8,10]
  end

  it 'finds all combos of reversed figures, [1,2,3], and returns to an array [[3,2], [3,1], [2,1]]' do
	 stocks = Stockpicker.new
	 result = stocks.find_combos([1,2,3])
	 expect(result).to eq [[3,2], [3,1], [2,1]]
  end

  it 'finds all combos of reversed figures, [4,5,6], and reutrns to an array [[6,5], [6,4], [5,4]]' do
	 stocks = Stockpicker.new
	 result = stocks.find_combos([4,5,6])
	 expect(result).to eq [[6,5], [6,4], [5,4]]
  end
end
