
require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, item_cost, quantity = 1)
    @price = (item_cost * quantity)

    @total += @price
    quantity.times do
      @items << item
    end
    @price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = (@total * (1 - (@discount / 100.0))).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price
    add_item
    binding.pry
  end

end
