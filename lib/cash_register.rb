class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize(num = 0)
    @total = 0
    @discount = num
  end

  def self.apply_discount
    @total -= @total*(@discount/100)
  end

  def add_item(item, cost, quantity = 1)
    @total += cost*quantity
  end

end
