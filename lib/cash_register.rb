require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :price_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @price_total = price * quantity
    @total += @price_total
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount > 0
      @total -= @discount
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price_total
  end

end
