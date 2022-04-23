def stock_picker(arr)
    buy_value = arr.min
    buy_day = arr.index(buy_value)
    if buy_day == arr.length - 1
        arr.pop
        stock_picker(arr)
    else
        shifted_values = arr.shift(buy_day)
        sell_value = arr.max
        arr = shifted_values.concat(arr)
        sell_day = arr.index(sell_value)
        return [buy_day, sell_day]
    end
end



puts stock_picker([17,1,6,9,15,8,6,2,10])