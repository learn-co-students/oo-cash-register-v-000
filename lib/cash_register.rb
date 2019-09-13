class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f         # to float to make formula work later on
    @items = []
  end

 def add_item(title, price, quantity = 1)
   @last_transaction = price * quantity
   @total += last_transaction

   count = 0
   until count == quantity do
     @items << title
     count += 1
   end
 end

 def apply_discount
   if @discount > 0
     @total = @total * ((100 - discount) / 100)
     @total = @total.to_i if @total == @total.to_i          # remove trailing zeroes
     "After the discount, the total comes to $#{@total}."
   else
     "There is no discount to apply."
   end
 end

 def items
   @items
 end

def void_last_transaction
  @total -= last_transaction
end
end
