class CashRegister
    attr_accessor :total
    attr_reader :discount, :items
    
    def initialize(employee_discount = 0)
        @total = 0
        @last_transaction_total = 0
        @discount = employee_discount
        @items = []
    end
    
    def add_item(name, price, quantity = 1)
        @last_transaction_total = price * quantity
        @total += @last_transaction_total
        quantity.times do
            @items << name
        end
    end
    
    def apply_discount
        @total *= 1 - @discount * 0.01
        if discount == 0
            "There is no discount to apply."
        else
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end
    
    def void_last_transaction
        @total -= @last_transaction_total
    end
end    
