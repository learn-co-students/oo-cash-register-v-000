require 'pry'

class CashRegister
  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @items = []
    @last_item = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @items.concat([item] * quantity)
    @last_item << (price*quantity)
    @total += (price*quantity)
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      percent = (100 - @discount)/100
      @total *= percent

      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last_item.last
  end

end
