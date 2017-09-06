class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(product, price, quantity = 1)
    i = 0
    while i < quantity
      self.items << product
      i += 1
    end
    self.last = price
    self.total += price * quantity
  end

  def apply_discount
    if self.discount > 0
      self.total = self.total.to_f - (self.total.to_f * (self.discount.to_f / 100))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last
  end
end
