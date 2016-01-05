class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = {}
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      self.items << title
    end
    self.total += price * quantity
    self.last_transaction = {title: title, price: price, quantity: quantity}
  end

  def apply_discount
    self.total -= self.total * self.discount / 100
    if self.discount > 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction[:price] * self.last_transaction[:quantity]
  end

end
