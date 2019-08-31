
require 'pry'

class CashRegister
  attr_accessor :total, :discount, :item, :price, :quantity, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @item = item
    @price = price
    @quantity = quantity
    @cost = (quantity * price)
    @total = @total + @cost
    quantity.times do @items << item end
    @total
  end

  def apply_discount
    if @discount != nil
      @total = price - (price * (discount/100.to_f))
      "After the discount, the total comes to $#{@total.to_i}."
      else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @cost
  end
end
