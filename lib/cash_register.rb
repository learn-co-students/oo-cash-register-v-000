
require 'pry'
class CashRegister
  attr_accessor :total, :discount, :title, :quantity, :items_array

  def initialize(discount = 0)
    @items_array = []
    self.total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @quantity = quantity
    self.items_array << Array.new(quantity, title)
    self.total = self.total + (price * quantity)
    self.total
  end

  def apply_discount
    if self.discount > 0
      disc = (100 - discount)
      disc = (disc.to_f / 100)
      self.total = self.total * disc
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    self.items_array.flatten!
  end

  def void_last_transaction
    self.total = 0
  end

end
