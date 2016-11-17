
class CashRegister
  attr_accessor :discount, :total
  @@transactions = []

 def initialize(discount=0)
   @total = 0
   @discount = discount
 end
def add_item(item,price,quantity= 1)
@total += price * quantity
@@transactions << @total
end

def apply_discount
    @total -= self.discount
  return "After the discount, the total comes to $#{@total}."
end
end
