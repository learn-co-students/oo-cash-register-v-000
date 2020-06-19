require "pry"

class CashRegister

  attr_accessor :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @ITEMS = []
  end

  def add_item(title, price, quantity = 1)
    @quantity = quantity
    @price = price
    @last_transaction = price*quantity
    @total += @last_transaction
    quantity.times { @ITEMS << title }
  end

  def apply_discount
    @total = @total - @discount.to_f / 100.0 * @price.to_f * @quantity.to_f
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @ITEMS
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
