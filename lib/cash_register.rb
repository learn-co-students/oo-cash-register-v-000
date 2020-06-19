require 'pry'

class CashRegister 

  attr_accessor :discount, :total, :last_transaction 
  attr_reader :items

  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end   
  
  def add_item(title, price, quantity = 1)
    #binding.pry
    self.total += (price * quantity) 
    quantity.times {@items << title}
    self.last_transaction = price * quantity 
  end   
 
  def apply_discount
    if self.discount != 0 
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else   
      "There is no discount to apply."
    end  
  end  

  def void_last_transaction
    
    #Subtract last transaction (instance variable) from class total
    self.total -= self.last_transaction
  end 
  

end   
