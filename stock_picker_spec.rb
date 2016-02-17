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

  it 'takes combos [[6,5], [6,4], [5,4] gives differences as [1, 2, 1]' do
	 stocks = Stockpicker.new
	 result = stocks.find_combo_differences([4,5,6])
	 expect(result).to eq [1, 2, 1]
  end

  it 'takes combos [[9,3], [9,7], [3,7]] gives differences as [6, 2, -4]' do
	 stocks = Stockpicker.new
	 result = stocks.find_combo_differences([7,3,9])
	 expect(result).to eq [6, 2, -4]
  end

  it 'takes differences [6, 2, -4] and returns highest value 6' do
	 stocks = Stockpicker.new
	 result = stocks.find_highest_profit([7,3,9])
	 expect(result).to eq 6
  end

  it 'takes differences [1, 2, 1] and returns highest value 2' do
	 stocks = Stockpicker.new
	 result = stocks.find_highest_profit([4,5,6])
	 expect(result).to eq 2
  end
  it 'finds index position of best day to buy and sell, based on highest profit, for [17,3,6,9,15,8,6,1,10] returns [1,4]'do
	 stocks = Stockpicker.new
	 result = stocks.find_best_buysell_days([17,3,6,9,15,8,6,1,10])
	 expect(result).to eq [1,4]
  end

  it 'finds index position of best day to buy and sell, based on highest profit, for [8, 3, 20, 7, 4, 1] returns [1,2]' do
	 stocks = Stockpicker.new
	 result = stocks.find_best_buysell_days([8,3,20,7,4,1])
	 expect(result).to eq [1,2]
  end
end
