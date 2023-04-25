def stock_picker(prices)
    
    #initialize pointers
    l = 0
    r = 1
    max_p = 0
    #assumes at least 2 days initialized
    best_buy = 0
    best_sell = 1


    while r < prices.length

        #check if you will profit the following days
        if prices[l] < prices[r]
            profit = prices[r] - prices[l]
            if profit > max_p
                #stores the best days selling/buying
                best_buy = l
                best_sell = r
                max_p = profit
            end
        #else update l pointer to following day
        else
            l = r
        end
        r +=1
        
    end
    return [best_buy, best_sell]
end
p stock_picker([17,3,6,9,15,8,6,1,10])