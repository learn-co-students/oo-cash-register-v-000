class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def self.total 
    @total 
  end
  
  def self.add_item(item, price, quantity=1)
     self.total += price*quantity
     @items << item
     
  end
  
  def self.apply_discount(discount)
    x = discount.to_i
    self.total *= x 
  end
  
    
    
    
  
end
