class CashRegister
 attr_accessor :total, :discount, :items, :last_transaction

 def initialize(discount = nil) #intialize with total of 0 and optional discount
   @total = 0
   @discount = discount
   self.discount if @discount != nil #calls discount if discount is included
   @items = [] #intialize empty cart (no items)
 end

 def discount #displays discount
   @discount
 end

 def add_item(title, price,quantity = 1)
   @last_transaction = price * quantity
   while quantity > 0
     items << title
     quantity -= 1
   end
   @total += @last_transaction
 end

 def apply_discount
   if self.discount != nil
     discount_percent = (self.discount)/100.0
     @total = @total * (1-discount_percent)
     "After the discount, the total comes to $#{@total.round}."
   else
     "There is no discount to apply."
   end
 end

 def void_last_transaction
   @total = @total - @last_transaction
 end
end
