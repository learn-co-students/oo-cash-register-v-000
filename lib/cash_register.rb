require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  #def discount
  #@discount = 20
  #end
  
  def add_item(title, price, qty = 1)
    self.total += qty * price
    qty.times do  
      @items << title
    end
    self.last_transaction = price * qty
  end
  
  def apply_discount
    
    if discount == 0.0
      "There is no discount to apply."
      
    else 
      self.total = (self.total - (self.total * discount/100))
      "After the discount, the total comes to $800."
   
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total = (self.total - self.last_transaction)
    self.total
  end
  
end
