require 'pry'

class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = Array.new
    @transactions = Array.new
  end
  def total
    @total
  end
  def add_item(title, price, quantity=0)
    if quantity == 0
      @items << title
      @transactions << price
      @total = @total + price
      @total
    else
      counter = 0
      until counter == quantity
        @items << title
        counter += 1
      end
      @items
      @transactions << quantity * price
      @total = @total + (quantity * price)
      @total
    end
  end
  def apply_discount
    if @discount != 0
      @total -= @total * @discount/100
      @total
      "After the discount, the total comes to $800."
    else
      @total
      "There is no discount to apply."
    end
  end
  def items
    @items
  end
  def void_last_transaction
    @total -= @transactions[-1]
  end
end
