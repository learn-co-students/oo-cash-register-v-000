class CashRegister
 attr_accessor  :total, :discount, :items, :last_transaction

 def initialize(discount = 0)
   @total= 0
   @discount = discount
   @items =[]
   @last_transaction = []
 end


 def add_item(item, price, quantity = 1)
   @total +=  price * quantity
     quantity.times do
           @items << item
         end
         @last_transaction= price * quantity
       end

def apply_discount
   if @discount == 0
    "There is no discount to apply."
   else
     @total = @total-(@total * @discount/100)
     @total
     "After the discount, the total comes to $#{@total}."
  end
 end

 def items
   @items
 end

 def void_last_transaction
   @total -= @last_transaction
 end
end
