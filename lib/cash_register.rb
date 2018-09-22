require 'pry'
class CashRegister
  attr_accessor :total, :discount
  attr_reader :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
  end
  
  def add_item(title, price, quantity = 0)
    
    if quantity > 0 
      self.total += price * quantity
      quantity.times do 
        self.items << title
      end 
    else
      self.total += price
      self.items << title
    end 
  end 
  
  def apply_discount
    #binding.pry 
    if self.discount > 0
      discount_total = self.total * (self.discount.to_f / 100)
      self.total = self.total - discount_total
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end 
  
  def void_last_transaction
    self.total = 0 
  end 
  
end 
