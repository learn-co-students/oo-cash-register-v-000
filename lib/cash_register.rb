require "pry"

class CashRegister

  attr_accessor :total, :items, :discount, :last_item

  def initialize (discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def total
    @total
  end

  def add_item (title, price, qty = 1)
    @last_item = price
    price = price * qty
    @total += price
    title = title.split
    title = title * qty
    @items << title
    @items = @items.flatten
  end

  def apply_discount
    @total = @total * ((100 - @discount.to_f) / 100)
    @total = @total.to_i
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item
  end

end