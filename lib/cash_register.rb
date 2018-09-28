class CashRegister 
  attr_accessor :total, :discount, :price , :items
  
  
  def initialize(discount = 0)       #discount on initialization 
    @total = 0                    #instance variable set to 0 
    @discount = discount 
    @items = [] 
  end 
  
  def add_item(item, price, quantity = 1)   
    @price = price                             #accepts a title and a price and increases the total
      @total += price * quantity            #also accepts an optional quantity 
      if quantity > 1                       #returns an array containing all items that have been added
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end        

   def apply_discount 
     if @discount > 0 
      @take_off = (price * discount)/100   #applies the discount to the total price
      @total -= @take_off   #reduces the total
      return "After the discount, the total comes to $#{total}."  #returns success message with updated total
    else 
      return "There is no discount to apply."
    end 
  end 
      
  
  def void_last_transaction
    @total -= @price #subtracts the last transaction from the total
    
    
  end 
  
   
 end 
  
  
  
  
