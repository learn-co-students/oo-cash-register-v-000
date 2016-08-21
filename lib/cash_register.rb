require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total= total+price*quantity
    quantity.times{@items << title}
  end

  def apply_discount
    @total = (total - (total * (discount * 0.01))).to_i
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = total - total
  end
end
