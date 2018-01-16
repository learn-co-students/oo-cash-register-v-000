require 'pry'
class CashRegister

  attr_accessor :total, :discount
  @@items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @total += (@price * @quantity)
    i = 0
    while i < @quantity-1
      @@items << @title
      i += 1
    end
  end

  def apply_discount
    if @discount != 0
      discount_percent = @discount/100.to_f
      @total = @total * (1-discount_percent)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@items
  end

end
