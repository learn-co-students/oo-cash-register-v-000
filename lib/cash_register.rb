require 'pry'
class CashRegister
  attr_accessor :total,:discount,:items,:last_transaction
   def initialize(discount = 0)
     @total = 0
     @discount = discount
     @items = []
   end
   def add_item(item,price,quantity=1)
     @last_transaction = price*quantity
     @total+= price*quantity
     until quantity == 0
     @items << item
     quantity-=1
     end
   end
   def apply_discount
     if discount != 0
     discounted = @total * discount.to_f/100
     new_total = @total - discounted
     @total = new_total.to_int
     return "After the discount, the total comes to $#{@total}."
      else
     return "There is no discount to apply."
      end
   end
   def items
     @items
   end
   def void_last_transaction
     @total -= @last_transaction
   end
end
