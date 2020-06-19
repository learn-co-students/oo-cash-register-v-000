require "pry"
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :priceoflastitem
 
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0 
    @all = []
  end
  
  def add_item(title, price, quantity = 1)
    @priceoflastitem = price*quantity
    @total += price*quantity
    quantity.times do  
      @all << title
    end
  end
  
  def apply_discount
    if discount > 0
      discount = (@discount * @total)/100
      @total -= discount
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end 
  
  def items
   @all
  end
  
  def void_last_transaction
    @total -= @priceoflastitem
  end
end
