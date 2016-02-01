require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += (price * quantity)
    quantity.times {items << item}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if self.discount > 0
      self.total = (self.total * (1-(self.discount * 0.01))).round
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
