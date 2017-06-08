
class CashRegister
  attr_accessor :total :discount

  def initialize(discount=0)
    @total = 0
    @discount = 0
  end

  def add_item(item)
    @total += item
  end
end
