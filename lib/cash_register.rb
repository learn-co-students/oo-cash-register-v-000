require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
    end

    def total
        self.total = @total
    end

    def items
        @items
    end
    
    def add_item(title, price, quantity=1)
        quantity.times do 
        items << title 
        end
        cost = price * quantity
        self.total += cost 
        self.last_transaction = cost
    end

    def apply_discount
        dollars_off = self.discount.to_f/100 * self.total
       self.total = self.total - dollars_off
       if @discount > 0
       "After the discount, the total comes to $#{@total.to_i}."
       else
        "There is no discount to apply."
       end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end 
    

end