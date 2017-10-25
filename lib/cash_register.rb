require 'pry'

class CashRegister
  attr_accessor :discount, :total, :title, :price, :quantity
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    while quantity > 0
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    if @discount > 0
      @total -= @discount * @total / 100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
     @total = 0
  end

end
