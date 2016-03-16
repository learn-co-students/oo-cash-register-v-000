require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  def discount
    @discount
  end
  def total
    @total - @discount
  end
  def add_item(title, price, quantity=0)
    if quantity == 0
      @total = self.total + price
      @total
    else
      @total = @total + (quantity * price)
      @total
    end
  end
  def apply_discount
    if @discount != 0
      @total -= @total * @discount/100
      @total
    else
      @total
    end
  end
end
