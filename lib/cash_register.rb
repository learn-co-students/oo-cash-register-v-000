require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :last_item_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_total = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_item_total = price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= (discount.to_f / 100) * total
      "After the discount, the total comes to $#{@total.floor}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= last_item_total
  end
end
