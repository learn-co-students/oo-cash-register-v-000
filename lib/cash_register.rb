require 'pry'
class CashRegister
 attr_accessor :total
 
 def initialize(discount = 0)
 @total = 0 
 @discount = discount
 @items = []
 end

 def discount
  @discount
 end

 def total
  @total
 end

 def add_item(item, price, quantity =1)
  @visit_total = price * quantity
  @total += @visit_total
  quantity.to_i.times {@items << item}
 end

 def apply_discount
  if @discount > 0
  @total = @visit_total - (@visit_total * @discount)/100
  "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end
 end

 def items
   @items
 end

 def void_last_transaction
  @total -= @visit_total
 end
end 

