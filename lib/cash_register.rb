class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0) 
    @total = 0
    @discount = discount
  end
  
   def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end
end

# doesn't forget about the previous total
  # cash_register.add_item("Lucky Charms", 4.5)
  # expect(cash_register.total).to eq(4.5)
  # cash_register.add_item("Ritz Crackers", 5.0)
  # expect(cash_register.total).to eq(9.5)