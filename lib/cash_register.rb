
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times{self.items.push(title)}
    self.last_transaction = {
      title: title,
      price: price,
      quantity: quantity
    }
  end

  def apply_discount
    if self.discount > 0
      self.total = (self.total - (self.total * (self.discount.to_f / 100))).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction[:price] * self.last_transaction[:quantity]
    self.last_transaction[:quantity].times{self.items.pop}
  end

end
