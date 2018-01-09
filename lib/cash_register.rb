require 'pry'

class CashRegister

  attr_accessor :total, :discount, :last_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end


  def total
    @total
  end


  def add_item(title, price, quantity = 1)
    @last_total = @total
    quantity.times do
      @cart << title
    end
    @total += price*quantity
  end


  def apply_discount
    if @discount != 0
      @total = @total*(100-@discount)/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end


  def void_last_transaction
    @total = @last_total
  end

end
