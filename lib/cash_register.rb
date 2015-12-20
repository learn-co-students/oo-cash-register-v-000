class CashRegister
    attr_accessor :discount, :total, :item_list, :last_transaction
    
    def initialize (discount_amount=0)
        @total=0
       @discount=discount_amount
       @item_list=[]
       @last_transaction=0
    end
    
    def total
        return @total 
    end
    def add_item (new_item,price,multiplier=1)
        subtotal=price*multiplier
        @last_transaction=subtotal
        @total+=subtotal
         number_added=0 
        if multiplier==1
            @item_list << new_item
        else
         
                while number_added < multiplier
                    number_added=number_added+1
                    @item_list << new_item 
                  
                end
        
        
        end
       
       
        return @total
    end
    
    def apply_discount
        if @discount==0
            return "There is no discount to apply."
        else
    
    
            a=@discount/100.0
            b=@total*a 
            @total-=b.round
            return "After the discount, the total comes to $#{@total}."
        end
    end
    
    def items
    return @item_list
    end
    
    def void_last_transaction
        @total-=@last_transaction
        return @total
    end
end
