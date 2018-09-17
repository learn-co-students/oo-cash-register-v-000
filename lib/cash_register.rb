class CashRegister

  attr_accessor :total
  attr_accessor :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount/100
  end

  def add_item(title, price, quantity=1)
    self.total += price*quantity
  end

  def apply_discount
    self.total *= @discount
  end


end