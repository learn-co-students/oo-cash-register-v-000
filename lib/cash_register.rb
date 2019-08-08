require 'pry'
class CashRegister

    attr_accessor :total, :items, :last_price, :discount

@last_price = 0

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    quantity.times{@items << title}
    @last_price = price
  end

  def apply_discount
    if discount != 0
    d = @total * 0.20
    result = @total - d.floor
    @total = result
    "After the discount, the total comes to $#{result}."
  else
    "There is no discount to apply."
  end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_price
    @items.delete_at(@items.length-1)
  end


end
