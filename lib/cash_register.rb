require 'pry'

class CashRegister
  
  attr_accessor :total, :last_item, :discount, :last_item_price, :items
 
  def initialize(discount= 0)
    @total = 0
    @discount = discount
    @items = []
    
  end
  
  def add_item(title, price, quantity= 1)
     self.total += (price * quantity.to_i)
    counter = 0
    while counter < quantity
      self.items << title
      counter += 1 
    end  
    
    #for voided transactions
    self.last_item_price = price * quantity.to_i
    self.last_item = title
  end
  
  def apply_discount
    if self.discount.to_i == 0 
      "There is no discount to apply."
    else
      self.total = total - (total * (self.discount.to_i * 0.01))
      "After the discount, the total comes to $#{self.total.round}."
    end
  end 
  
  def void_last_transaction
    self.items.delete_if {|x| x == self.last_item}
    self.total = total - self.last_item_price
  end
  
end  
  