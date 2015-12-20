class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction
    
    def initialize (discount_amount=0)
            @total=0
            @discount=discount_amount
            @items=[]
            @last_transaction=0
    end
    
    def add_item (new_item,price,multiplier=1)
            self.last_transaction=price*multiplier
            self.total+=price*multiplier
        if multiplier==1
            self.items << new_item
        else
            multiplier.times { self.items << new_item }
        end
    end
    
    def apply_discount
        if self.discount==0
            return "There is no discount to apply."
        else
            self.total-=(self.total*(self.discount/100.0)).round
            return "After the discount, the total comes to $#{self.total}."
        end
    end
    
    def void_last_transaction
             self.total-=self.last_transaction
    end
end
