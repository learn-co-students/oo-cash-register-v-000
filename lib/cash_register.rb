require 'pry'

class CashRegister

attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount = 0) #optionally accepts a discount
    @discount = discount
    @total = 0
    @items = []
  end

  def apply_discount #applies a discount, if given, to the total
    if discount != 0
      self.total = self.total - (self.total * (self.discount.to_f / 100))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def add_item(title, price, quantity = 1)
    self.last_transaction = title, price, quantity #assigns the items being added in to an identifier
    quantity.times do
      self.items << title
    end
    self.total += quantity * price
  end

  def void_last_transaction #uses the last_transaction identifier to void the previous transaction
    # binding.pry
    self.last_transaction[2].times do
      self.items.delete(self.last_transaction[0])
    end
    self.total -= self.last_transaction[2] * self.last_transaction[1]
  end
end
