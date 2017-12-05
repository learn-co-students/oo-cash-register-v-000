require 'pry'

class CashRegister
  
  attr_accessor :discount, :total
  attr_reader :items

  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = [title, price, quantity]
    @total += (price * quantity) 
    @items = @items + [title] * quantity
  end
  
  def apply_discount
    if @discount <= 0
      "There is no discount to apply."
    else
      @total = @total - (discount*10)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    title, price, quantity = @last_transaction
    @total -= (price * quantity) 
    @items = @items - [title] * quantity
  end

end
