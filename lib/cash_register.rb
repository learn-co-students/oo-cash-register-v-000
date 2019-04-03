#require 'pry'
class CashRegister
  attr_accessor :total, :disc

  def initialize(total = 0.0)
    @total = total
    @disc = disc

  end

  def discount
    self.disc = 20
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    @total/self.discount = self.total 

  end
#100.class returns Integer while 100.0.class returns Float
  #binding.pry
end
