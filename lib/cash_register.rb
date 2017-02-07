require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def add_item(title,price,quantity=1)
    self.total += (price*quantity)
    i = quantity
    while i > 0 do
      self.items << title
      i -= 1
    end
    self.last_item = [title,price,quantity]
  end

  def apply_discount
    if self.discount > 0
      self.total *= ((100-self.discount)/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= (self.last_item[1] * self.last_item[2])
  end

end
