class CashRegister
  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount = 0)
    
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
    
  end

  def add_item(title, price, quantity=1)
    
     self.total += (price*quantity)
     self.items.fill(title, self.items.size, quantity)
     self.last_transaction << self.total
     
  end
  
  def apply_discount
    
   if self.discount != 0 
     self.total -= self.total*self.discount/100 
     "After the discount, the total comes to $#{self.total}."
     
   else 
     "There is no discount to apply."
     
    end
  end
  
  def void_last_transaction 
    self.total -= self.last_transaction.pop
    
  end
end
