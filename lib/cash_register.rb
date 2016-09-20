# require 'pry'
class CashRegister

attr_accessor :total, :discount

def initialize(discount=nil)
  @total = 0
  @discount = discount
end

def add_item(title, price, quantity = nil)
  if quantity.to_i > 0
    self.total += price * quantity
  else
    self.total += price
  end
end

def apply_discount
  self.total = (@total - (@total * (@discount / 100)))
end

end
