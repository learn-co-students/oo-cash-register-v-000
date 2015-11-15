require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items, :prices

  def initialize(discount = 0)
    @discount = discount.to_f
    @total = 0.00
    @items = []
    @prices = []
  end

  def add_item(item,price,quantity = 1)
    self.total += (price * quantity)
    quantity.times do 
      self.items << item
      self.prices << price
    end
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = self.total * (1 - discount/100)  
      "After the discount, the total comes to $#{self.total.round}."
    end
  end

  def void_last_transaction
    self.items.pop
    self.total -= prices.pop
  end

end