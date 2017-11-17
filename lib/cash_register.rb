class CashRegister

  attr_accessor :total, :discount
  attr_reader :title, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount

  end

end
