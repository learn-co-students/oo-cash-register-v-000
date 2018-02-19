require 'pry'

class CashRegister
  attr_accessor :total, :discount


  def total=(total=0)
    @total = total
  end
  def total
    @total
  end

  def initialize(discount = 0)
    self.total = 0
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    self.total = total + (price * quantity)
  end
# binding.pry


end
