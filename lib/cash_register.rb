class CashRegister
   attr_accessor :total, :discount

   def initialize(discount = nil)
     @total = 0
     @discount = discount
     @items = [ ]
     @price = [ ]
     @last_item = 0
   end

   def add_item(title, price, quantity = 1)
     @last_item = self.total
     self.total += price*quantity
     quantity.times{@items << title}
       @last_item = self.total - @last_item
   end

   def total
     @total
   end

   def apply_discount
     if !@discount.nil?
        @total = self.total - (self.total*self.discount.to_f/100)
        return "After the discount, the total comes to $#{@total.to_i}."
     else
       return "There is no discount to apply."
     end
   end

   def items
     @items
   end

   def void_last_transaction
     @total = self.total.to_f - @last_item.to_f
   end

end
