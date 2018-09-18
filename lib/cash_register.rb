require "pry"

class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items 
  

  def initialize (discount = 0)
    
    @total = 0 
    @discount =discount 
    @items = []
  end 
  

 
 
  
  
  def add_item(title, price, quantity = 1)
      @last_transaction = price * quantity 
    @total += price * quantity
    quantity.times {@items << title}
 
  end 
  
  def apply_discount
if @discount > 0
      @discount = @discount/100.to_f

      @total = @total - (@total * @discount)
    
       "After the discount, the total comes to $#{@total.to_i}."
    else 
       "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction 
  @total  =  @total.to_f - @last_transaction.to_f 
  @total 
  end 
 
 def items
   @items
 end 
    
end 
