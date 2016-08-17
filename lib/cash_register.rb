
class CashRegister
  attr_accessor :total, :discount

  CASHREGISTER = []

  def initialize(discount = 0)
    @discount = discount
    @total = 0 + discount
    @discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    @total = @total - @discount
    "After the discount, the total comes to $#{@total}."
  end

end

cesh = CashRegister.new(200)
cesh.add_item("toy",800)
cesh.apply_discount
