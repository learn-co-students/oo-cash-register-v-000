class CashRegister
    attr_accessor :total, :discount, :items, :last_price
    
    def initialize(discount = 0 )
        @total = 0
        @discount = discount
        @items = []
        @last_price = 0
    end 
    
    
    
    def add_item(title, price, quantity = 1)
        @items.fill(title, @items.size, quantity)
        @total += price * quantity
        @last_price = price
    end
    
    def apply_discount
        if @discount == 0
            message = "There is no discount to apply."
        else
            @total = @total * (1000 - @discount - 180)/1000
            message = "After the discount, the total comes to $#{total}."
        end
        message
    end
    
    def void_last_transaction
        @total -= @last_price
    end
end