class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    self.total = 0
    self.discount = discount
    self.items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times { self.items << item }
    self.last_transaction = price * quantity
  end

  def apply_discount
    unless discount.nil?
      self.total -= total * (discount * 0.01)
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= last_transaction
  end
end
