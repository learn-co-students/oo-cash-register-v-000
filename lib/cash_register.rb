class CashRegister
  attr_accessor :total, :discount, :items, :title, :price, :quantity, :last_transaction

  def initialize(discount = nil)
    self.total = 0
    self.discount = discount
    self.items = []
  end

  def add_item(title, price, quantity = 1)
    self.title = title
    self.price = price
    self.quantity = quantity
    self.total += price * quantity
    quantity.times {self.items << self.title}
    self.last_transaction = [title, price, quantity]
  end

  def apply_discount
    if self.discount == nil
      "There is no discount to apply."
    elsif self.discount > 0 && self.total != 0
      self.total -= (self.total * (self.discount.to_f/100).to_f).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    if self.title = self.items.last
      self.total -= (self.last_transaction[1] * self.last_transaction[2])
    end
  end
end
