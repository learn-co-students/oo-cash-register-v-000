class CashRegister
  
  attr_accessor :total, :discount, :item, :price, :quantity
  
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    
  end
  
  def add_item(item, price, quantity = 1)
    self.total += (price * quantity)
  end
  
end
