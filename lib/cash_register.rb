require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price, :title, :quantity, :total, :void_price
  
  def initialize(discount = "20")
    @total = 0
    @discount = discount
    @stuff = []
    @void_price = []
  end
  
  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @void_price << @price
    @title = title
    @quantity = quantity
    @total = @total + @price * @quantity
    i = @quantity
    while i > 0
      @stuff << @title
      i -= 1
    end
    @total
  end

  def apply_discount
    @total = @total - @total * 0.2
  if @total > 0
    return "After the discount, the total comes to $#{"%g"%@total}."
  else
    return "There is no discount to apply."
   end
  end
  def items
    @stuff
  end
  
  def void_last_transaction
    @total = @total - @void_price[-1].to_f
  end
end
