require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
    @items << item
    @transaction = price * quantity
  end
  end

#   def discount # this is already above in attr_accessor! no extra reader needed.
#     @discount
#   end

  def apply_discount
    if @discount != 0
      @total = @total - ((@discount/100.0) * @total)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

#   def items #this also is already above in attr_accessor! no need for reader!
#     @items
#   end

  def void_last_transaction
    @items.pop
    @total = @total - @transaction
  end
end
# Where can I use "self"? Run this code.
