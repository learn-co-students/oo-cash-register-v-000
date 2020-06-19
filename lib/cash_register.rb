
require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = Array.new
  end

  def add_item(name, price, quantity = 1)
    number_of_items = quantity
    while number_of_items > 0
      @items << name
      number_of_items -= 1
    end

    @last_transaction = price*quantity
    @total = @total + @last_transaction


  end

  def apply_discount
    if discount == nil
      return "There is no discount to apply."
    else
      dicounted_amount = @total * (@discount.to_f / 100)
      @total = @total - dicounted_amount.to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
