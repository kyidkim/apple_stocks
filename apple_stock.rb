#make repository in git

def get_max_profit(stock_prices)
  apple_prices_yesterday = Hash[stock_prices.each_with_index.map { |value, index| [index, value ] }]

  p apple_prices_yesterday

  stock_prices_length = apple_prices_yesterday.length - 1
  # max_profit = 0
  min_value = apple_prices_yesterday[0]
  min_key = 0
  apple_prices_yesterday.each do |key, value|
    #puts key

    if value.nil?
      raise "value must not be nil"
    end

    if value < min_value
      min_value = value
      min_key = key
    end
  end
  max_value = 0
  max_key = 0
  min_key.upto(stock_prices_length).each do |key|
    value = apple_prices_yesterday[key]
    if value > max_value
      max_value = value
      max_key = key
    end
  end
  puts min_value
  puts min_key
  puts max_value
  puts max_key

  max_value - min_value

end

stock_prices_yesterday = [10, 7, 5, 8, 11, 9, 2]
puts get_max_profit(stock_prices_yesterday)


# {0=>10, 1=>7, 2=>5, 3=>8, 4=>11, 5=>9, 6=>2}


# {0=>10, 1=>7, 2=>5, 3=>8, 4=>11, 5=>9, 6=>2}
# {2 => 6, 5 => 2, 7 => 1, 8 => 3, 9 => 5, 10 => 0, 11 => 4 }
