require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price
  @@items = []
  @@prices = []
  
  def initialize(discount = nil)
    @@items.clear
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity
    @@prices << price * quantity
    quantity.times do 
      @@items << @title
    end
    
  end
  
  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      @total -= @discount * 10
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @@items
  end
  
  def void_last_transaction
    @total = @total - @@prices[-1]
    
  end
end
