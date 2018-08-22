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
  end
end

# accepts a title and a price and increases the total
# also accepts an optional quantity -->  expect{cash_register.add_item("book", 5.00, 3)}.to change{cash_register.total}.by(15.00)
# doesn't forget about the previous total