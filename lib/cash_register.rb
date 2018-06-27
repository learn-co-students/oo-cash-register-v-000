require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount = 0)
      @total = 0
      @discount = discount.to_f
      @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += (quantity * price)
    @last_item = quantity * price

    i = 0
    while i != quantity
      @items << item
      i += 1
    end

  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0

    @total = @total * (1 - @discount/100.0)
    # binding.pry
    return "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item
  end

end
