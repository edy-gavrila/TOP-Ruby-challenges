stocks = [17,3,6,9,15,8,6,1,10]
def stock_picker(stocks)
    profit = 0
    buy_day = 0
    sell_day = 0
    for i in 0..stocks.length-1 do
        for j in i+1..stocks.length-1 do
            
            if (stocks[j] - stocks[i]) > profit
                profit = stocks[j] - stocks[i]
                buy_day = i
                sell_day = j
            end
        end
    end
[buy_day,sell_day]
end

result = stock_picker(stocks)
puts "Buy on day #{result[0]} and sell on day #{result[1]} for a profit of #{stocks[result[1]] - stocks[result[0]]}."