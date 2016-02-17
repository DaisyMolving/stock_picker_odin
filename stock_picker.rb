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

	 2
  end
end
