require 'pry'

class CashRegister

  attr_accessor :total


  def initialize(discount=nil)
    @discount = discount
    @total = 0
  end

  def discount
    @discount
  end

  def add_item(item, price, quantity=0)
    quantity > 0 ? @total += price * quantity : @total += price
  end

  def apply_discount
    self.total = self.total - self.discount
  end


end
