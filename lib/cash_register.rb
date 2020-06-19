class CashRegister
  attr_accessor :discount, :total, :items, :running_total

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
    @running_total = []
  end

  def add_item(item, price, quant=1)
    self.items.concat([item] * quant)
    self.running_total.concat([price] * quant)
    self.total += price * quant
  end

  def apply_discount
    return "There is no discount to apply." if self.discount == 0

    self.discount /= 100.00
    self.discount *= self.total
    self.total -= self.discount

    return "After the discount, the total comes to $#{self.total}."
  end

  def void_last_transaction
    self.items.pop
    void = self.running_total.pop
    self.total -= void
  end
end
