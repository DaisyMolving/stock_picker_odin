class Stockpicker
  def reverse_values(stock_values)
	 reversed_stocks = stock_values.reverse
	 reversed_stocks
  end

  def find_combos(stock_values)
	 reversed_stocks = reverse_values(stock_values)
	 all_combos = reversed_stocks.combination(2).to_a
	 all_combos
  end

  def find_combo_differences(stock_values)
	 combo_difference = []
	 all_combos = find_combos(stock_values)
	 all_combos.each do |combo|
		combo_difference << combo.reduce(:-)
	 end	
	 combo_difference
  end

  def find_highest_profit(stock_values)
	 combo_difference = find_combo_differences(stock_values)
	 greatest_profit = combo_difference.max
	 greatest_profit
  end
  def find_best_buysell_days(stock_values)
	greatest_profit = find_greatest_profit(stock_values)
	# all_combos = find_combos(stock_values)
	# best_buysell_days = []

	index_of_combo = combo_difference.index(greatest_profit)
	index_of_combo
  end
end
