require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction




  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []

  end


  def total
    @total
  end

  def add_item(item, price, quantity = 1)

    quantity.times do
      @cart << item
    end

    @total += price * quantity
  end

  def apply_discount
    if discount > 0
       @total -= @discount * 10.0
       "After the discount, the total comes to $#{@total.floor}."

    else
      "There is no discount to apply."
    end
  end


  def items
    @cart
  end

  def void_last_transaction
  @total = @total - @last_transaction = @total

  end

end
