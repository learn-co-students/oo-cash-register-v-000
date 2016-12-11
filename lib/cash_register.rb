require 'pry'

class CashRegister
  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
  end

  attr_accessor :total, :discount, :items, :last_transaction

  def add_item(item, price, quantity = 1)
    quantity.times do
      self.items << item
    end
    self.last_transaction = price * quantity
    self.total += price * quantity
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total * (100 - self.discount) / 100
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
