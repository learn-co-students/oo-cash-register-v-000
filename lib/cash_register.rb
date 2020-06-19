class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end
  def add_item(title, price, quantity = 1)
    quantity.times do
      self.items << title
    end
    total = price * quantity
    self.last_transaction = total
    self.total += total
  end
  def apply_discount
    if self.discount > 0
      self.total -= ((self.total/100) * self.discount)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  def void_last_transaction
    self.total -= self.last_transaction
  end
end
