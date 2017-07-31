require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items, :last_title, :last_price, :last_quantity
    
    def initialize(discount = 0)
        self.total = 0 
        self.discount = discount
        self.items = []

        
    end
    def add_item(title, price, quantity = 1)
        # accepts a title and a price and increases the total
        self.total += price * quantity
        items = quantity.times {self.items << title} 
        last_title = title
        self.last_price = price
        self.last_quantity = quantity
        
    end
    def apply_discount
        # binding.pry
        # you will need to convert the discount to a percentage (discount.to_f / 100)
        if self.discount >= 1
           self.total -= ((self.discount.to_f / 100) * self.total) 
           "After the discount, the total comes to $#{self.total.to_i}." 
        else 
            "There is no discount to apply."
        end      
    end

    def void_last_transaction
        # binding.pry
        self.total -= self.last_price
        items = self.last_quantity.times {self.items.pop} 
    end
     
end
