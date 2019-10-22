require "pry"

class CashRegister

@@all = []

  attr_accessor :total, :discount, :title, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    apply_discount
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity
    @quantity = quantity
    @quantity.times do
      @items << @title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount = @discount * 0.01
      @total -= discount * @total
      "After the discount, the total comes to $#{@total.to_int}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - self.total
  end

end
