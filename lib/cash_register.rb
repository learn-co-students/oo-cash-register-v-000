require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    quantity.times do
      items << item
    end
    self.total += price*quantity
    self.last_item = price*quantity
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total - (self.total * (self.discount * 0.01))
      self.total = self.total.to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.items.pop
    self.total -= self.last_item
  end

end
