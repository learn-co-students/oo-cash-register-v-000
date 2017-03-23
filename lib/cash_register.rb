require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :last_item_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_price = 0
  end

  def add_item(title, price, qty = 1)
    @total += (price * qty)
    qty.times do
      @items << title
    end
    @last_item_price = price
  end

  def apply_discount
    if @discount >= 1
      int_to_float = @discount.to_f / 100
      real_discount = @total * int_to_float
      @total -= real_discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item_price
  end

end
