require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total    = 0
    @discount = discount
    @items    = []
  end

  def add_item(title, price, opt_quantity=1)
    @items << title.split * opt_quantity
    self.items = @items.flatten
    self.total += price * opt_quantity
  end

  def apply_discount
    if self.discount > 0
      self.total -= self.discount * 10
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
end
