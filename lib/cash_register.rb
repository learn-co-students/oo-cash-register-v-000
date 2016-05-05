class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize(num = 0)
    @total = 0
    @discount = num
    self.apply_discount
  end

  def apply_discount
    @total -= @total*(@discount/100)
  end

  def add_item(item, cost, quantity = 1)
    @total += cost*quantity
  end

end
