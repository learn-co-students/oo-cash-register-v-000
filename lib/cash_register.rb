class CashRegister
  attr_accessor :total, :discount, :items, :transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.transaction = price * quantity
    self.total += self.transaction
    quantity.times {items << title}
  end

  def apply_discount
    self.total = self.total * (1.0 - discount.to_f / 100.0)
    if discount > 0
      "After the discount, the total comes to $#{total.to_i}."
    else "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.transaction
  end

end