class CashRegister
attr_accessor :total, :discount, :item, :price

@@items = []

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @@items = []
end

def add_item(item,price, quantity = 1)
 
  until quantity < 1 do
     self.item = item
    self.price = price
    @@items << item
    @total += price
    quantity = quantity - 1
  end
  
  
end  

def apply_discount
  if (@discount != 0)
    @total = @total - (@total * @discount / 100)
    "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end
end

def items
  @@items
end

def void_last_transaction
  @total = @total - self.price
end
def total
  @total
end

end
