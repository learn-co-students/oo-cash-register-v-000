class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
  end

  def add_item(title, price, quantity = 1)
    self.last_transaction = price * quantity
    self.total += self.last_transaction
    quantity.times {self.items << title}
  end

  def apply_discount
    if self.discount > 0
      self.total = self.total * (100 - self.discount) / 100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
    self.items.pop
  end

end
