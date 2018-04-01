require 'pry'

class CashRegister
  attr_accessor :total, :discount
  @@all_items = []

  def initialize(discount = 0)
    self.discount = discount
    self.total = 0
  end

  def add_item(title, price, quantity = 1)
    self.total = total + (price * quantity)

  end

  def apply_discount
    if discount > 0.to_f
      self.total = total - (total * discount/100.to_f)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    # binding.pry
    @@all_items
  end


end
