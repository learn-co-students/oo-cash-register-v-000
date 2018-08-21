class CashRegister
  attr_accessor :total, :discount
  
  def initialize(total = 0, discount = 0) 
    @total = total
    @discount = discount
  end
  
  def self.add_item(title, price)
    @total << price
  end
end
