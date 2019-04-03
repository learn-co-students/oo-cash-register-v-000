#require 'pry'
class CashRegister
  attr_accessor :total, :discount

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount

  end

  # def total
  #   @total
  # end

  # def discount
  #   self.disc = 20
  # end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    @total = self.total - (self.total * self.discount/100)

  end
#100.class returns Integer while 100.0.class returns Float
  #binding.pry
end
