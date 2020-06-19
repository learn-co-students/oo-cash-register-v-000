require 'pry'

class CashRegister
  
attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @items.fill(title, @items.size, quantity)
    @last_cost = price * quantity
  end
  
  def apply_discount 
     if @discount > 0
       @total = @total - (@discount * @total / 100)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
    
  def void_last_transaction
    @total = @total - @last_cost
  end
  
end
