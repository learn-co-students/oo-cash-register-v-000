require 'pry'

class CashRegister
  attr_accessor :discount, :items, :total, :last_item_price

  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times { @items << title }
    @last_item_price = price
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total -= @total * discount / 100
    "After the discount, the total comes to $#{@total}."
  end

  def void_last_transaction
    @total -= @last_item_price
  end
end
