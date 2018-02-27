require 'pry'

class CashRegister
  attr_accessor :items, :total, :discount, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      self.items << title
    end
    self.last_transaction = self.total
  end

  def apply_discount
    if discount != 0
      self.total = (self.total.to_f) - (self.total.to_f * (self.discount.to_f/100))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end


end
