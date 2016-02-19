class CashRegister
  def initialize(discount = 0)
    @total = 0 
    @discount =discount
    @items =[]
  end 

attr_accessor:total,:discount,:items

def add_item(title,price,quantity = 1)
   @prev_price = @total
    @total += price*quantity
    @items += [title]*quantity
end

def apply_discount
 if @discount == 0
 "There is no discount to apply." 
else 
 @total *= 1-@discount/100.to_f
 @total = @total.to_i
 "After the discount, the total comes to $#{@total}."
end
end

  def void_last_transaction
    @total = @prev_price
    @items.pop
  end
end
