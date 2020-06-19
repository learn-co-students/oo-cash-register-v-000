require 'pry'
class CashRegister

attr_accessor :discount, :total, :items, :last_transaction

 

def initialize(discount = 1)
  @discount = discount
  @total = 0
  @@items = []
  @last_transaction = 0
end



def add_item(items, price, quantity = 1)
  counter = quantity
  @total = self.total + (price * quantity)
  @last_transaction = (price * quantity)
  
  while counter >= 1
  
  @@items << items
  counter -= 1
end
end

def apply_discount
total_print = []
@total = self.total - (10*discount)
total_print << @total
string_print = total_print.join("")

if discount == 1
return "There is no discount to apply."

else

return "After the discount, the total comes to $#{string_print}."
end

end


def items
  @@items
end

def void_last_transaction
  @total = self.total - @last_transaction
end



end
