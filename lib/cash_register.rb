require 'pry'

class CashRegister
  attr_accessor :total, :discount, :add_item

def initialize(total = 0, discount = 20)
  @total = total
  @discount = discount
end
  
  def add_item(title, price)
    @total = total + price
  end
  
end