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

  def find_greatest_profit(stock_values)
	 combo_difference = []
	 all_combos = find_combos(stock_values)
	 all_combos.each do |combo|
		combo_difference << combo.reduce(:-)
	 end	
	 greatest_profit = combo_difference.max
	 greatest_profit
  end

  def find_best_buysell_days(stock_values)

  end
end
