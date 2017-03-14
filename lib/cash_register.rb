require 'pry'

class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :items, :add_transaction, :discount_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_i
    @items = []
    @add_transaction = 0
    @discount_transaction = 0
  end

  def add_item(title, price, quantity = 1)
    self.title = title
    counter = 0
    while counter < quantity
      self.items << self.title
      counter += 1
    end
    self.price = price
    self.quantity = quantity
    self.add_transaction = self.price * self.quantity
    self.total += self.add_transaction
    self.total
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.discount_transaction = (self.total * self.discount) / 100
      self.total = self.total - self.discount_transaction
      "After the discount, the total comes to $#{total}."
    end
  end


  def void_last_transaction
    self.total = self.total - self.add_transaction
  end

end
