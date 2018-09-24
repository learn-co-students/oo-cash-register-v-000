require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
    @@cart = []
  end
  
  def add_item (title, price, quantity=1)
    @total += price * quantity
    @last_transaction = price * quantity
    quantity.times do 
     @@cart << title
  end
end


end