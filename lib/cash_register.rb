require 'pry'

class CashRegister 
# set @total instance variable 
  attr_accessor :total, :discount, :title, :price, :cart 


# initialize @total instance variable to 0 
  def initialize(discount = 0) # sets a default argument with a value of 0 
    @total = 0 #sets cash register total to 0 
    @discount = discount 
    @cart = [] 
  end 
  
  def total # returns the amount of money in the cash register 
    @total
  end
    
  def add_item(title, price, quantity = 1) 
    #add item to total
    @title = title
    @price = price 
    #1 input = price and quantity
    #2 calculate total from price and quantity (total = price and quantity)
    counter = quantity 
    while counter > 0 
      counter -= 1 
      @cart << @title
    end # however many items are in cart, is equal amount of times to add title 
    
    @total += price * quantity
  
    
    # add price to total
  end 
  
  def apply_discount 
    
    # cash register should start off with an employee discount 
    # employee discount should equal 20%
    # calculate total with discount
    # input is total and discount
    # total * .20 subtract from total
    # if register was not initialized with a discount return error message 
      if @discount != 20
       return "There is no discount to apply."
      else
        @total = @total - (@discount * 10)
        return "After the discount, the total comes to " + "$" + @total.to_s + "."
    # discount should be applied to the total price of items 
  end 
  end
  
  def items 
    # list item titles
    # this will return an array of items
    @cart  
  end 
  
  def void_last_transaction
    
    @total = @total - @price 
  end 
  
  
  
  
  
  
end 
