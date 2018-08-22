class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0) 
    @total = 0
    @discount = discount
  end
  
  # def add_item(title, price, optional_quantity = 1)
  #   self.total =+ price
  # end
  
   def add_item(title, price, quantity = 1)
    self.total = price * quantity
    total
  end
end

# doesn't forget about the previous total