require 'pry'

class CashRegister

  attr_accessor :total

  def initialize(discount = 20)
    @total = 0
    def self.discount
      discount = 20
    end
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity

  end

  def apply_discount
    @total * self.discount
    

  end

end
