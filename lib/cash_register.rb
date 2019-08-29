class CashRegister
   
    attr_accessor :total, :discount, :items
    
    
    def initialize(discount = 0) 
        @discount = discount
        @total = 0
        @items = []
    end
    
    def total
        @total
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
            @total = @total - (@total * @discount / 100)
            "After the discount, the total comes to $#{@total}."
        end    
    end
    
    def items
        @items
    end
    
    def void_last_transaction
        @items.pop
        @total -= @last_transaction
    end
    
end
