require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @current_item_total = price * quantity
    @total += @current_item_total
    quantity.times {items << title}
  end

  def apply_discount
    if @discount > 0
      @total = (@total * (1.0 - (@discount/100.to_f))).to_i
      #binding.pry
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @current_item_total
  end

end
