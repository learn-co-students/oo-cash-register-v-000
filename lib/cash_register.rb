class CashRegister
  attr_accessor  :discount, :total, :quantity, :title, :price
  @@items=[]
  
  def initialize(discount=0)
    @total = 0      
    @discount = discount
    @@items=[]
  end
  
  def discount
    @discount
  end
  
  def add_item(title, price, quantity=1)
    @price = price
    @total += (price * quantity)  
    @quantity = quantity
    until quantity == 0 do
      @@items << title 
      quantity -=1
    end
  end
  
   def apply_discount
     if @discount != 0
     @total = @total*(100-@discount)/100
     return "After the discount, the total comes to $#{@total}."
     else
       return "There is no discount to apply."
     end       
  end
  
  def items
    @@items
  end

  def void_last_transaction
    @total -= (@price*@quantity)
  end
end
