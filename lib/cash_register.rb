require 'pry'

class CashRegister
    attr_accessor :total, :items, :last_transaction
    attr_accessor :discount, :quantity

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @last_transaction = 0
        @items = []
    end
    
    def add_item(title, price, quantity = 1)
        @total += price * quantity
        @last_transaction = price
        quantity.times do
            @items << title
        end
    end
    
    def apply_discount
        if @discount == 0
            "There is no discount to apply." 
        else
            @total -= @total * (@discount.to_f/100)
            "After the discount, the total comes to $%.0f." % @total
        end
    end
    
    def items
        @items
    end
    
    def void_last_transaction
        @total -= @last_transaction
    end
    
end
