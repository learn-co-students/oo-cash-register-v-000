class CashRegister
    attr_accessor:discount, :total, :items, :last_total
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_total = 0
    end
    
    def add_item(item, price, quantity = 1)
        self.last_total = self.total
        self.total += price * quantity
        quantity.times do
            self.items << item
        end
    end
    
    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        else
            self.total -= self.total * self.discount/100
            return "After the discount, the total comes to $#{self.total}."
        end
    end
        
    def void_last_transaction
        self.total = self.last_total
    end
end
