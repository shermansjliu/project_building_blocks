test_case = [1, 2]
test_price = [17,3,6,9,15,8,6,1,10]
def stock_picker(prices)
    result = 0
    buy_day = 0
    sell_day = 0
    i = 0
    j = 0

    while i < prices.length do
        j = i + 1
        while j < prices.length - i do
            potential = prices[j] - prices[i]
            if potential > result
                result = potential
                buy_day = i
                sell_day = j
            end
            j += 1
        end
        i += 1
    end

    [buy_day, sell_day]
end

puts stock_picker(test_price)
