require 'pry'

class CashRegister
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    attr_accessor :discount, :total, :items

    def add_item(item, price, qnty = 1)
        @total = @total += price *qnty
        qnty.times do 
            @items << item
        end
    end

    def apply_discount
        @total = @total * (100 - @discount) / 100
        if @discount != 0
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end
    def void_last_transaction
        @total = 0
        @items = []
    end
end