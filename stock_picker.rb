week_one = [17,3,6,9,15,8,6,1,10]
week_two = [10,5,5,5,2,7,8,4,10]

def stock_picker(price_array)
  max_profit = 0
  days_tosell = [0,0]

  price_array.each_with_index do |price_i, index_i|
    price_array.each_with_index do |price_j, index_j|
      profit = price_j - price_i
      if profit > max_profit && index_j > index_i
        max_profit = profit
        days_tosell = [index_i, index_j]
      end
    end
  end
  puts "The best day to buy is #{days_tosell[0]} and the best day to sell is #{days_tosell[1]} for a profit of #{max_profit}"
end

stock_picker(week_one)
stock_picker(week_two)