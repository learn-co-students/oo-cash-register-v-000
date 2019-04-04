require 'pry'
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if discount > 0
      self.total = total - (total * discount/100)
      #self.total = (total * ((100 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    items = []
    #new_register = CashRegister.new
    #self.add_item(title, price, quantity)

    items << self.add_item(title, price, quantity)
    items
    #array << add_item
  end
  #binding.pry
end
