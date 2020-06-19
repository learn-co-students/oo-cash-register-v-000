require 'pry'
class CashRegister

attr_accessor :cash_register, :cash_register_with_discount, :total, :discount, :items, :last_item, :qty
  
def initialize(discount=0)
@total = 0
@discount = discount
@items =[]
end

def discount
@discount = 20
end 

def total
@total
end 

def add_item(item_name,price,quantity= 1)
subtotal = price*quantity
@last_item = subtotal 
@qty=quantity
 @total += subtotal
 i=0
 while i<quantity 
 @items << item_name 
   i+=1 
  end
end 

def apply_discount
if @discount == 0
"There is no discount to apply."
else
discount_to_apply = @total*(@discount.to_f/100).to_f
@total -= discount_to_apply
"After the discount, the total comes to $#{@total.to_i}."
end 
end 

def void_last_transaction
  i=0 
while i<qty
  @items.pop
  i+=1 
end 
@total-=@last_item 
end  

def items
@items
end 

  
end   