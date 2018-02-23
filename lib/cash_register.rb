class CashRegister
  attr_accessor :total, :discount, :items, :price

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      items << title
    end
    @price = price
    self.total += price * quantity
  end

  def apply_discount
    if self.discount != nil
      self.total -= self.total.to_i * self.discount.to_i / 100
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.price
    self.items.pop
  end

end
