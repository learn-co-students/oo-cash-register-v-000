class CashRegister
  attr_accessor :total, :discount, :title
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity
  end
  
  def apply_discount
    @total = @title.total - @discount
    "After the discount, the total comes to $#{@total}."
  end
  
end 
