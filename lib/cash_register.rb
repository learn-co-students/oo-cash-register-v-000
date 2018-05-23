class CashRegister
  attr_accessor :total, :discount, :title, :price, :items
  
  def initialize(employee_discount = 0)
    @discount = employee_discount
    @total = 0
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
   quantity.times{@items << @title = title} 
   @price = price
   @total += price * quantity
  end 
  
  def apply_discount
    if @discount == 0 
    "There is no discount to apply."
  else
     @total = (@price * ((100-@discount)*0.01)).to_i
    "After the discount, the total comes to $#{@total}."
  end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @total - @price
  end
end 
