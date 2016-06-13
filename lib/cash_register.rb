require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << item
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if discount > 0
      @total = @total - (@total * (@discount * 0.01)) 
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
