
class CashRegister
  attr_accessor :discount, :total
  @@transactions = []

 def initialize(discount=0)
   @total = 0
   @discount = discount
 end
def add_item(item,price,quantity= 1)
@total += price * quantity
@@transactions << item
end

def apply_discount
  if(discount > 0)
    @total -= self.discount
  return "After the discount, the total comes to $#{@total}."
else
  "No discount to apply"
  @totalS
end
end #end of apply_discount

def items
@@transactions
end #end of items
