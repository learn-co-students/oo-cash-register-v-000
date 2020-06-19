require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    self.total = 0
    self.discount = discount  
    self.items = []  
  end

  def add_item (item, price, quantity = 1)
    self.last_transaction = price * quantity
    self.total += price * quantity
    quantity.times {self.items << item}
  end

  def apply_discount
    if discount > 0
      self.total = self.total - self.total * self.discount/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end


end
