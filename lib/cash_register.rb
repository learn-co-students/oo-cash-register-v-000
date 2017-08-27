class CashRegister
  attr_accessor :discount, :total, :items, :void_last_transaction, :last_price

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @last_price = price
    items.fill(item, items.size, quantity)
    self.total += price * quantity
  end

  def apply_discount
    if discount.nil?
      'There is no discount to apply.'
    else
      self.total = ((100 - discount.to_f) * 0.01) * self.total
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= last_price
  end

end