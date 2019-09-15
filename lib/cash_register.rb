require 'pry'

class CashRegister
  attr_accessor :items, :total, :discount, :last_transaction, :quantity

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total = @total + price * quantity
    @last_transaction = price * quantity
    @quantity = quantity
    while quantity != 0
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total - (@total * (discount / 100.0))
      return "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
    quantity = @quantity
    while quantity != 0
      @items.pop
      quantity -= 1
    end
  end
end
