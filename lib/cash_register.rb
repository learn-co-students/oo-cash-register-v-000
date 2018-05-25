require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items, :price

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total += price * quantity

    i = 0
    while i < quantity
      @items << title
      i += 1
    end
  end

  def apply_discount
    if @discount > 0
      @total -= (@total * (@discount * 0.01))
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price
  end
end
