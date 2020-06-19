class CashRegister
  
    attr_accessor :total, :discount
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @last_transaction = 0
        @items = []
    end
    
    def add_item(title, price, quantity=1)
        quantity.times { @items << title }
        @total += (price * quantity)
        @last_transaction = (price * quantity)
    end
    
    def apply_discount
        if @discount > 0
            @total -= (@total * (discount * 0.01))
            return "After the discount, the total comes to $#{@total.to_int}."
        else
            return "There is no discount to apply."
        end
    end
    
    def items
        @items
    end
    
    def void_last_transaction
        @total -= @last_transaction
    end
end
