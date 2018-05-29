require 'pry'

class CashRegister
  attr_accessor :total, :items, :last_price, :discount

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    @total += price*quantity
    quantity.times {@items << title}
    @last_price = price
  end

  def apply_discount
    if @discount > 0
      discount_percent = @discount/100.round(2)
      @total -= @total*discount_percent
      after_discount = @total.round
      "After the discount, the total comes to $#{after_discount}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_price
  end

end
