require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :last_item
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @list_of_items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += (price)*quantity
    quantity.times do 
      @list_of_items << title
    end
    @last_item = {title=>price}
  end
  
  def apply_discount
    if self.discount != 0
      self.total = self.total - self.total * (self.discount/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @list_of_items
  end
  
  def void_last_transaction
    self.total -= @last_item[@list_of_items[-1]]
    @list_of_items.pop
  end
end