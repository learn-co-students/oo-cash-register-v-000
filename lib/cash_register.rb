require 'pry'

class CashRegister
  attr_accessor :discount, :total, :last

  def initialize(discount=nil)
    @discount = discount
    @total = 0.0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += (price*quantity)
    quantity.times do |num|
      self.items << title
    end
    @last = [title, price, quantity]
  end

  def void_last_transaction
    self.total -= (last[1]*last[2])
    last[2].times do |num|
      self.items.pop
    end
  end

  def apply_discount
    if discount
      self.total *= ((100.0-self.discount)/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

end
