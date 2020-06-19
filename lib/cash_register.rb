require 'pry'
class CashRegister
  
  attr_accessor :discount, :total, :items, :last
 
  
 
  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += (price.to_f * quantity)
    quantity.times do
      self.items << title
    end
    self.last = (price*quantity)
  end
 
  
  def apply_discount
    if self.discount > 0
      self.total += -self.discount
      "After the discount, the total comes to $#{self.total.to_i}."
    else "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total = self.total - self.last
  end
 
end
# binding.pry