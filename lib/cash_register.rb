class CashRegister
     
     attr_accessor :total , :discount , :items, :last_transaction
     
     def initialize(discount = 0)
          @total = 0
          @discount = discount
          @items = []
     end
     
     
     def add_item(title, price, quantity = 1)
           self.total += price * quantity
           quantity.times do
                self.items << title
           end
           @last_transaction = price * quantity
     end
     require 'pry'
     def apply_discount
          if @discount == 0
               return  "There is no discount to apply."
          else
               @discount *= 0.01
               @discount = 1- @discount
               @total *= @discount
               total_with_discount = @total.floor
               return "After the discount, the total comes to $#{total_with_discount}."
          end        
     end 
     
     def items
          @items
     end
     
     def void_last_transaction
       @total -= @last_transaction
     end
          
end
