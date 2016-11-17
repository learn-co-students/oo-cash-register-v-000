
class CashRegister
  attr_accessor :discount, :total, :last_item_price
  @@transactions = []
@last_item_price
 def initialize(discount=0)
   @total = 0
   @discount = discount
 end
def add_item(item,price,quantity= 1)
@total += price * quantity
@@transactions << item
@last_item_price = price

end

def apply_discount
  if(@discount > 0)
    @total = @total - (@total * @discount/100)
  return "After the discount, the total comes to $#{@total}."
else
  "No discount to apply"
  @totalS
end
end #end of apply_discount

def items
@@transactions
end #end of items

def void_last_transaction
  self.total -= @last_item_price
end

end
