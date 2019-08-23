require 'pry'

class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(title, price, quantity = 1)
    @price = price
    @total = @total + (price * quantity)
    while quantity > 0 
    @items << title
    quantity -= 1
  end
  
  end
  def apply_discount
    if @discount > 0 
      discount = @discount/100.0
      @total = @total - (@total * discount)
     return "After the discount, the total comes to $#{@total.round}."
   else 
     return "There is no discount to apply."
   end
  end
  
  def items
    @items
  end
 
 def void_last_transaction
 @total = @total - @price
 @total
 end
    
  
end
