require "pry"
class CashRegister
  attr_accessor :discount, :total

  def initialize(*discount)
     @discount = discount.join.to_i
     @total = 0
  end

  def add_item(title, price, quantity=1)
    @total = total + price*quantity
  end

  def apply_discount
      @total -= @total * (@discount / 100)
      self.class.new
    end


end

 
