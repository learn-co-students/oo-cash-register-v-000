require 'pry'
class CashRegister
   attr_accessor :total, :discount, :items, :last_transaction
   
   
   
   def initialize(discount = 0)
     @items  = [ ]
     @total = 0
     @discount = discount
   end
  
   
   def add_item(product, price, count=1)
      i = 0
      while i < count
        @items << product
        i+=1
      end
     price = price * count
     @last_transaction =  price
     @total += price
   end
   
   def apply_discount
     @total= @total - (@discount * 10)
     @total
       if @discount == 0
         "There is no discount to apply."
         else 
       "After the discount, the total comes to $#{@total}."
      end
   end
   
   def items
     @items
   end
   
   def void_last_transaction
      @total = @total - @last_transaction
    end
end 
