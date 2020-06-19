require "pry"

class CashRegister
  attr_reader :discount, :items
  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_price = 0
  end

  def add_item(new_item, price, qty = 1)
    @last_item_price = price
    @total += (price * qty)
    qty.times { @items << new_item }

  end

  def apply_discount
    unless discount == 0
      @total = (@total * ( 1 - discount.to_f / 100 )).to_int
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_item_price
  end

end
