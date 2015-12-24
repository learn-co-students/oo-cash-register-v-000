## to call an instance inside of another instance you need to use the self keyword.
## void_last_transaction method will remove the last transaction from the total. (create an additional attribute accessor and keep track of the last transaction)
class CashRegister 
  attr_accessor :discount, :total, :title , :quantity
  

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @@items=[]
  end 

  def add_item(title, price, quantity=1)
    @quantity= quantity 
    @total += price*quantity
    @title = title 
      i=0
      until quantity ==i
        @@items << title 
        i+=1
      end 
  end

  def apply_discount 
   if @discount == 0
     "There is no discount to apply."
   else  
   @total -= (@discount*@total)/100

   "After the discount, the total comes to $#{@total}."
    end 
  end 

  def items  
   @@items

  end 

  def void_last_transaction 
     @total = 0

  end 

end 