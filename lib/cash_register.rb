require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title,price,quantity=1)
    @items += ("#{title} "*quantity).split(" ")
    @total += price*quantity
    @last_transaction = price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= @total.to_f*(@discount.to_f*0.01)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
