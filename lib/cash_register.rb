class CashRegister
 	 attr_accessor :total, :discount, :items, :void_last_transaction

 def initialize(discount = 0) #optionally takes an employee discount on initialization
     @total = 0       #sets an instance variable @total on initialization to zero/ returns the current total
     @discount = discount
     @items = []        #returns an array containing all items that have been added
  end

  def add_item(title, price, quantity = 1)  #accepts a title and a price and increases the total/  also accepts an optional quantity
     @total += price * quantity
     quantity.times { @items << title }
     @void_last_transaction = [title, price, quantity] # doesn't forget about the previous total
   end

   def apply_discount
     @total == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total = @total * 8 / 10 }."
   end                 #^^returns a string error message that there is no discount to apply                        #returns success message with updated total^^^                      #^^applies the discount to the total price

   def void_last_transaction
    @total -= @void_last_transaction[1] * @void_last_transaction[2] # subtracts the last transaction from the total
     @void_last_transaction[2].times do
      @items.delete_at(@items.index(@void_last_transaction[0]) || @items.count)
     end
   end
 end
