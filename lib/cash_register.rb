
class CashRegister
 attr_accessor :total, :discount, :price
 @@items = []


 def initialize(discount = nil)
  @total = 0
  @discount = discount
  @@items.clear
 end

 def add_item(item, price, quantity = 1)
   @@items.fill(item, @@items.size, quantity)
   @price = price
  @total +=price * quantity

 end

 def apply_discount
 @total *= 0.80
   if(discount)
     return "After the discount, the total comes to $#{total.to_i}."
   else
     return "There is no discount to apply."
   end
 end

def items
  return @@items
end

def void_last_transaction
  @total -= price
end


 def total
   @total
 end


end #finish
