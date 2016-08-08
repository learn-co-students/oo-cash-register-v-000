require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    self.total = 0
    self.discount = discount
    self.items = []
  end

  def add_item(title, price, quantity = nil)
    if quantity != nil
      self.last_transaction = (price * quantity)
      quantity.times do
        self.items << title
      end
      self.total += self.last_transaction
    else
      self.last_transaction = price
      self.items << title
      self.total += self.last_transaction
    end
  end

  def apply_discount
    if self.discount != nil
      self.total = self.total - self.total*self.discount/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
