require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total = (price * quantity) + @total
    quantity.times do
    @items << title
    end
    @last_item = price
  end

  def apply_discount
    if @discount > 0
      @total = @total - (@discount * 10)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_item
    @total
  end

end
