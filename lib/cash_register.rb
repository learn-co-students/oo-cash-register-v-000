require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :most_recent_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @items << title.split * quantity
    self.items = @items.flatten
    self.total += price * quantity
    self.most_recent_transaction = price * quantity
  end

  def apply_discount
    if self.discount <= 0
      "There is no discount to apply."
    else
      discount = self.total * self.discount.to_f/100
      self.total -= discount.to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= self.most_recent_transaction
  end
end
