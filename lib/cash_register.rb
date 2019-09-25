class CashRegister 
  
  @@items = []
  @@prices = []
  
  attr_accessor :total, :discount, :discounted_total
  
def initialize(discount = 0)
  @total = 0 
  @discount = discount
  @@items.clear 
end 

def add_item(item, price, quantity = 1)
  i = 0 
  while i < quantity 
    @@items << item 
    i += 1 
  end 
  add_on = price * quantity
  @@prices << add_on
  @total += add_on
end 

def apply_discount
  if @discount == 0 
    message = "There is no discount to apply."
  else 
    discount = (@total * @discount)/100 
    @total = @total - discount  
    message = "After the discount, the total comes to $#{@total}."
end 
message
end 

def items 
  @@items 
end 

def void_last_transaction 
  @@items.pop

  @total = total - @@prices.last 
  @@prices.pop
  @total 

end 

end 