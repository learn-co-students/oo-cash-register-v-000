require 'pry'
class CashRegister

#Add items of varying quantities and prices
#Calculate discounts
#Keep track of what's been added to it
#Void the last transaction

attr_accessor :total, :discount, :items, :last_transaction

  def initialize(employee_discount = 0)
    @total = 0 
    @discount = employee_discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.last_transaction = price*quantity
    self.total += self.last_transaction
    quantity.times {self.items << title}
  end
  
  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = self.total*(1-self.discount/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end
  
  def void_last_transaction
    self.items.pop
    self.total = self.total - self.last_transaction    
  end
end


