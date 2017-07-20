class CashRegister
     
     attr_accessor :total , :discount , :items, :last_transaction
     
     def initialize(discount = 0)
          @total = 0
          @discount = discount
          @@items = []
     end
     
     
     def add_item(title, price, quantity = 1)
           self.total += price * quantity
     end
     
     def apply_discount(discount)
          self.total = self.total -(self.total*discount/100)
          if discount == 0
               "There is no discount to apply."
          else
               "After the discount, the total comes to" + " $" + self.total.to_s + "."
         
          end 
     end 
     
     
     # def items
     #    @items
     # end 
     
     # def void_last_transaction
     #   @total = @total - @last_transaction
     # end
          
end
