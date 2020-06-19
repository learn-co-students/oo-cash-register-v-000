require 'pry'

class CashRegister
  attr_accessor :discount, :total, :added_items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @added_items = []
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price
    @total += (price * quantity)
    counter = quantity
    while counter > 0
      @added_items << title
      counter -= 1
    end
  end

  def apply_discount
    if @discount > 0
      @total -= @total * @discount / 100
      discount_result = "After the discount, the total comes to $#{@total}."
    else
      discount_result = "There is no discount to apply."
    end
    discount_result
  end

  def items
    @added_items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
