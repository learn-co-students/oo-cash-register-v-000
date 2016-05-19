require "pry"
class CashRegister
  attr_accessor :discount, :total

  def initialize(*discount)
     @discount = discount.join.to_i
     @total = 0
  end

  def add_item(title, price, *quantity)
    @total = total + price * quantity

  end


  #def add_item(title, price, *quantity)
  #  price = price.to_f
  ##  quantity = quantity.join.to_i
  #  @total = @total + price * quantity
#
 # end

end

 
