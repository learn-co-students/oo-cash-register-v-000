require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
  end

  def add_item(name, price, quantity = 1)
    self.total += (price*quantity)
    self.last_item = price
    while quantity >= 1
      self.items << name
      quantity -= 1
    end
  end

  def apply_discount
    self.total = self.total*((100-self.discount)/100.0)
    if self.discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.items.pop
    self.total = self.total - self.last_item
  end

end