
class CashRegister
attr_accessor :total,:discount,:last_transaction, :items

def initialize(discount= 0)
@total = 0
@discount = discount
@items = []
end

def add_item(title,price,quantity=1)
i =0
while i <quantity do
  self.items << title
  i +=1
end
self.last_transaction = price*quantity
self.total += price*quantity
end

def apply_discount
if discount == 0
  return "There is no discount to apply."
else
  self.total = self.total*(100-self.discount)/100
  return "After the discount, the total comes to $#{self.total}."
end
end

def items
return @items
end

def void_last_transaction
self.total = self.total-self.last_transaction
end

end
