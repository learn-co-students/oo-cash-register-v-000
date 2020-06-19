require "pry"

class CashRegister

  attr_accessor :total, :discount, :item, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(item, price, quantity = 1)
    @last_transaction = (price * quantity)
    @items.concat([item]*quantity)
    @total += (price * quantity)
  end

  def apply_discount
    if @discount > 0
      @total -= (@total * (@discount * 0.01))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
    @last_transaction = 0
    @total
  end

end
