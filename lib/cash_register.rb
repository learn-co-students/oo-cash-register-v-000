
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
   @total = 0
   @discount = discount
   @items =[]
 end

 def add_item(item, price, qty = 1)
   @total += price * qty
   qty.times {@items << item}
   @last_transaction = price * qty
 end

 def apply_discount
   if @discount != 0
    @total = (@total.to_f - @total*discount/100.0).to_i
    "After the discount, the total comes to $#{@total}."
   else
     "There is no discount to apply."
   end
 end

 def items
   @items
 end

 def void_last_transaction
   @total = @total - @last_transaction
 end
end
