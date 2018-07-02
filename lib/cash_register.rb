
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def item
    @item
  end

   def add_item(item, price, quantity = 1)
     @total += price*quantity
     @last_transaction = price*quantity
     while quantity > 0 do
       @items << item
       quantity -= 1
     end
   end

   def apply_discount
     if @discount != 0
       @total -= (@total * (@discount.to_f / 100)).to_i
       "After the discount, the total comes to $#{@total}."
     else
       "There is no discount to apply."
     end
   end

   def void_last_transaction
     @total -= @last_transaction
   end
 end
