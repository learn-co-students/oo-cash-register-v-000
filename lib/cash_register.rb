require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    quantity.times do
      @items << item
    end
    @total += price*quantity
    @last_item = price*quantity
  end

  def apply_discount
    if @discount != 0
      @total = @total - (@total * (@discount * 0.01))
      @total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @items.pop
    @total -= @last_item
  end

end
