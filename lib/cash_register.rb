require 'pry'
class CashRegister
    
  attr_accessor :discount, :total, :items, :last_transaction
   
  def initialize(discount=0)
    self.total = 0
    self.discount = discount
    self.items = []
    self.last_transaction = {}
  end
  
  def add_item(title, price, quantity=1)
    self.last_transaction = {title: title, price: price, quantity: quantity}
    quantity.times {self.items << title}
    self.total += price*quantity
  end
  
  def apply_discount
    if self.discount != 0
      self.total = (self.total * (100-self.discount))/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    if self.last_transaction != {}
      self.items.pop(self.last_transaction[:quantity])
      self.total -= self.last_transaction[:price]*self.last_transaction[:quantity]
    else
      "You haven't entered any transactions yet."
    end
  end
    
end
