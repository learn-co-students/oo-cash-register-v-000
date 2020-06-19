class CashRegister
  attr_accessor :total, :discount, :last_transaction_amount, :items

  def initialize(discount = nil)
    self.total = 0
    self.discount = discount
    self.items = []
  end

  def add_item(title, price, quantity = 1)
    self.last_transaction_amount = price * quantity
    self.total += price * quantity
    quantity.times { self.items << title }
  end

  def apply_discount
    if discount
      self.total *= (100.0 - self.discount) / 100.0
      if self.total % 1 == 0
        self.total = self.total.to_i
      end
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.items.pop
    self.total -= self.last_transaction_amount
  end
end
