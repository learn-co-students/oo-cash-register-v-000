require 'pry'

class CashRegister
    
        attr_accessor :discount, :total
        attr_reader :title
    
        def initialize(discount = 0)
            
            @total = 0
    
            @discount = discount.to_f
    
        end
    
        def add_item(title, price, quantity = 1)
            @title = title
            @quantity = quantity
            @price = price
            @total = total+(price*quantity)
        end
      
        def apply_discount         
            @total = total-(total*@discount.to_i/100.to_f)
            if @total > 0
                return "After the discount, the total comes to $#{@total.round}."
            else
                return "There is no discount to apply."       
            end
        end

      
        def items
            @title
        end

        def void_last_transaction
        end


end
