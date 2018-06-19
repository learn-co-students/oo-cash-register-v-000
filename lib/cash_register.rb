require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_t
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times {|i| self.items << title}
    self.total += price * quantity
    self.last_t = [price, quantity]
  end
  
  def apply_discount
    unless self.discount == 0
      self.total *= ((100 - self.discount) / 100.0)
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.last_t.last.times {|i| self.items.pop}
    self.total -= self.last_t.first
  end

end
