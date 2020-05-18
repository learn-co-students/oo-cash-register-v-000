require 'pry'

class CashRegister
  attr_accessor :discount, :total, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def discount
    @discount = 20
  end

  def add_item(item, price, quantity = 1)
    @total = @total + price*quantity
    @last_item = item
  end

  def apply_discount
    if @discount = 20
      binding.pry
      @total = @total*(1 - @discount/100.0)
      return "After the discount, the total comes to $#{@total.to_i}."
    elsif @discount = 0
      return "There is no discount to apply."
    end
  end

end
