require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @last_item = price
    if quantity > 0
    self.total += (price * quantity)
    quantity.times do
      items << title
    end

  else
    self.total += price
    items << title
  end
end

  def apply_discount
    if self.discount > 0
      self.total -= (self.total * self.discount/100)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
  end
end

  def items
    @items
  end

  def void_last_transaction
    self.total = (self.total - self.last_item)
    self.total
  end

end
