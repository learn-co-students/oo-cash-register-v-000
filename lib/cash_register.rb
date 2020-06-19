require 'pry'
class CashRegister 
  
  attr_accessor :total, :discount, :sub_total 

  
  def initialize(discount = 0)
     @total = 0
     @discount = discount
     @all_items = []
  end 
  
  def add_item(item, price,quantity = 1)
   total_amount = price*quantity
   @total +=total_amount
   @sub_total = price 
    quantity.times do  
    @all_items << item
  end 
  
  @total
  end
    
  def apply_discount
   if @discount == 0 
     "There is no discount to apply."
   else
  new_total = @discount*10
  @total -= new_total
     "After the discount, the total comes to $#{@total}."
   end
    
  end

def items
@all_items
end

def void_last_transaction 
 @total = @total - @sub_total
end 

 
  







end