require "pry"

class CashRegister

  #returns the current total
  attr_accessor :total, :quantity

  #define the discount instance
  attr_reader :discount, :title, :price

  def initialize (discount='')
    @total = 0
    @discount = 20
  end

  def add_item(title, price, quantity=1)
    if quantity > 0  #if quantity is added then execute to following code
      self.total += (price*quantity)
    else
      self.total +=price #else execute this
    end
  end

  def apply_discount
   self.add_item(title, price, quantity=1)
  end

  def items

  end

  def void_last_transaction

  end
end
