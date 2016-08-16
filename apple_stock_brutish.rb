def get_max_profit(stock_prices_yesterday)
  max_profit = stock_prices_yesterday[1] - stock_prices_yesterday[0]

  stock_prices_yesterday.each_with_index do |buy_price, buy_time|
    stock_prices_yesterday.each_with_index do |sell_price, sell_time|
      if buy_time >= sell_time
      else
        potential_profit = sell_price - buy_price
        if potential_profit > max_profit
          max_profit = potential_profit
        end
      end
    end
  end
  puts max_profit
end

stock_prices_yesterday = [1, 1, 1, 1]
get_max_profit(stock_prices_yesterday)
