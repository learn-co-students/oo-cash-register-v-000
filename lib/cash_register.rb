require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.last = [price, quantity]
    quantity.times { items << title }
    self.total += price * quantity
  end

  def apply_discount
    if discount
      self.total = (total - total * (discount.to_f / 100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    price = self.last[0]
    quantity = self.last[1]
    
    quantity.times { |i| self.items.pop }
    self.total = self.total - price * quantity
  end
end
