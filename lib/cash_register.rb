require 'pry'

class CashRegister 
# set @total instance variable 
  attr_accessor :total, :discount 

# initialize @total instance variable to 0 
  def initialize(discount = 0) # sets a default argument with a value of 0 
    @total = 0 #sets cash register total to 0 
    @discount = 20
  end 
  
  def total # returns the amount of money in the cash register 
    @total
  end
    
  def add_item(title, price, quantity = 1) 
    #add item to total
    #1 input = price and quantity
    #2 calculate total from price and quantity (total = price and quantity)
     @total += price * quantity 
    # add price to total
  end 
  
  def apply_discount 
    
    # cash register should start off with an employee discount 
    # employee discount should equal 20%
    # calculate total with discount
    # input is total and discount
    # total * .20 subtract from total
    @total = @total - (@discount * 10)
    return "After the discount, the total comes to " + "$" + @total.to_s + "."
    # discount should be applied to the total price of items 
  end 
  
end 
