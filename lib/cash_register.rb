class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0.0
    @discount = discount
  end

  def add_item(key, value, quantity = 1)
    @total += value * quantity
  end

  def apply_discount(discount)

  end


end #<--------class end
