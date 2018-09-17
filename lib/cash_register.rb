class CashRegister

  attr_accessor :total
  attr_accessor :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    self.total += price*quantity
  end

  def apply_discount
    discount = (100 - @discount).to_f / 100
    self.total *= discount
  end


end