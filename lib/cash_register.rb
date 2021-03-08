require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    i = 0
    until i == quantity
      @items << item
      i += 1
    end
    @last_transaction = price * quantity
  end
  
  def apply_discount
    @total = @total * ((100 - @discount) / 100.00)
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.round}."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
end