class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    self.total = total + (price * quantity)
  end

  def apply_discount
    self.total = total - (total * (discount * 0.01)).to_i
    return "After the discount, the total comes to $#{self.total}."
  end
end
