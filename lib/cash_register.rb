require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @last_transaction = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_transaction = price
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    return "There is no discount to apply." if discount == 0
    @total = @total - @total*(@discount*0.01)
    return "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
    @items.pop
  end
end
