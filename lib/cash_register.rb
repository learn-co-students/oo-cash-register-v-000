class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction_amt

  def initialize(discount = 0)
    self.total = 0.0
    self.items = []
    self.discount = discount.to_f
  end

  def add_item(title, price, qty = 1)
    counter = 0

    while counter < qty
      self.items << title
      self.total += price

      counter += 1
    end

    self.last_transaction_amt = [price, qty]
  end

  def apply_discount
    if self.discount == 0.0
      "There is no discount to apply."
    else
      self.total *= (1 - (self.discount/100))
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    counter = 0

    while counter < self.last_transaction_amt[1]
      self.total -= self.last_transaction_amt[0]
      self.items.pop

      counter += 1
    end
  end
end
