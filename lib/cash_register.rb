require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :added_items, :last_transaction
  
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @added_items = []
  end
  
  def add_item(items, price, quantity = 1)
    @last_transaction = price * quantity
    self.total += @last_transaction
    quantity.times{ self.added_items << items}
  end
   
  def apply_discount
     if @discount == 0 
        "There is no discount to apply."
     else self.total = self.total-self.total*@discount/100
        "After the discount, the total comes to $#{self.total}."
     end
  end
  

    
  def items
    @added_items
  end
      
      
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
  
      
       
end
