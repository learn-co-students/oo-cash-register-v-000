require 'pry'
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(title, price, quantity = 1)
    f = title * quantity
    a = f.scan(/#{title}/)

    @items << a
    @items.flatten!
    @prices << price
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount = @discount * 0.01
      @total = @total - @total * discount
      message = "After the discount, the total comes to $#{@total}"
      message.sub(/\.\d/, ".")
    end
  end

  def void_last_transaction
    a = @prices.last
    @total -= a
  end

  def items
    @items
  end
end