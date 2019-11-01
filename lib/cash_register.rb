class CashRegister

attr_accessor :total, :discount, :title, :price, :quantity, :item

@@items = []

 def initialize (discount = 0)
   @total = total
   @discount = discount
   @items = []
   @total = 0
 end

 def total
   @total
 end

 def add_item (title, price, quantity = 1)
   @total = @total + price*quantity
   @item = price*quantity
   quantity.times do
     @items << title
   end
 end

 def apply_discount
  if @discount != 0
    @total = @total*0.8
    return "After the discount, the total comes to $#{@total.round}."
  else
    return "There is no discount to apply."

  end

 end

 def items
   @items
 end

 def void_last_transaction
   @total = @total - @item
   return @total
 end

end
