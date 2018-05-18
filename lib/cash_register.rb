class CashRegister
  
require 'pry'
  
attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_transaction  
  
def initialize(discount = 0)
  @discount = discount 
  @total = total
  @total = 0 
  @items = []
end 

def total 
  @total  
end 

def add_item(title, price, quantity = 1)
  @total += price * quantity 
  quantity.times {@items << title} 
  @last_transaction = price * quantity 
end 

def apply_discount
  if @discount > 0 
    @total -= (@total * (@discount / 100.0)).to_i 
    "After the discount, the total comes to $#{@total}."
  else 
    "There is no discount to apply."
  end 
end 

def items 
  @items
end 

def void_last_transaction 
  @total -= @last_transaction 
end 

end 
