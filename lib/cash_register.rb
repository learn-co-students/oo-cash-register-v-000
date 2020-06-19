require 'pry'
class CashRegister
attr_accessor :discount, :total, :last_transaction
  
  def initialize(discount = nil) #=> When you pass in an argument and value is set to nil, that value is the default argument
    @total = 0
    @discount = discount
    @basket = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times {@basket << title}
    self.total += price * quantity
    self.last_transaction = price * quantity
  end
  
  def apply_discount
    if discount
      multiplier = 1 - (@discount.to_f/100)
      @total = multiplier * total
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    # discount = 20. Convert 20 to 20.0 and then divide by #100. 0.20. multiplier 1 - 0.2 = 0.8
    else
    return "There is no discount to apply."
  end
  end
  
  def items
    @basket
  end
  
  def void_last_transaction
    @total = @total - @last_transaction
  end
 
end
