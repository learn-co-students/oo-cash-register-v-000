
require 'pry'
require 'mathn'
class CashRegister
  attr_accessor :total, :discount, :items, :void_last_transaction
  def initialize(discount = 0)
    @items = Array.new
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    quantity == 1 ? @items << title : @items << ((title + " ") * quantity).split
    @void_last_transaction = (price * quantity)
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total * (self.discount/100))
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items.flatten
  end

  def void_last_transaction
    self.total -= @void_last_transaction
  end
end


