def stock_picker(prices)
#define variables 
buying_day = 0
selling_day = 0
highest_profit = 0

#iterate to find buying price
prices.each_with_index do |buying_price, buy_day|
    #iterate to find selling price
    prices.each_with_index do |selling_price, sell_day|
        #disregards if buying day is after selling day
        if buy_day > sell_day
            next
        else
            #Updates highest_profit, buying_day, selling_day if iteration's profit is higher than current highest_profit
            if highest_profit < (selling_price - buying_price)
                highest_profit = (selling_price - buying_price)
                buying_day = buy_day
                selling_day = sell_day
            end
        end
    end
end


return [buying_day, selling_day]

end

stock_picker([17,3,6,9,15,8,6,1,10])
