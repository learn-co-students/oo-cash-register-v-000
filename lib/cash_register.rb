#Initialize with 'total'
class CashRegister

  attr_accessor :total, :discount, :last_transaction_amount, :item
#--------------------------------------------------------  
  #sets an instance variable @total on initialization to zero
  #optionally takes an employee discount on initialization 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end
  
#--------------------------------------------------------
  #accepts a title and a price and increase the total -Done
  #also accepts an optional quantity
  #doesn't forget about the previous total
  
  def add_item(title, price, quantity = 1)
    
    #Approach # 1
    # case quantity
    #   when quantity > 1
    #   @total += price*quantity
    #   @item << title
    #   else
    #     # @total += price
    #     @item << title
    # end
    # @last_transaction_amount 
    
    #Approach # 2
    # if quantity > 1
    #   @total += price*quantity
    #   @item << title
    # else
    #   @total += price
    #   @item << title
    # end
    # @total = @last_transaction_amount
    # @total
    
    # Increases the total regardless of the quantity
    @total += price*quantity
    
    # Add title to the item list as per the quantity of a particular item
    quantity.times { @item << title}
    
    # Remembers the last transaction amount before totalling up 
    @last_transaction_amount =  price*quantity
    
    # Returns the total amount of the entire list
    @total
  end
  
#--------------------------------------------------------
#The cash register was initialized with an employee discount 
  #apply the discount to the total price
  #returns success message with updated total
  #reduces the total
  
#The cash register was not initialized with an employee discount
  #returns a string error message that there is no discount to apply
  
# def  apply_discount
  # # If Initialized with a discount
  # if @discount
  # #  Total price x Discount
  #   (@total * @discount.to_f).to_i
  # #  Return th updated Total
  #   puts "After the discount, the total comes to #{@total - (@total * @discount.to_f).to_i}."
  # #  Reduced Total
  #   @total - (@total * @discount.to_i) 
  # else
  # # If initialized without a discount
  #   puts "There is no discount to apply."
  # end
  
  
  
  # if @discount
  #   self.total = (total * (100.0 - discount.to_f)/100).to_i
  #   # @total -= (@discount.to_f/100 *  @total )
  #   # @total -= (@total * @discount.to_f/100_
  #   puts "After the discount, the total comes to #{@total *= @discount.to_f}."
  #   @total *= @discount.to_f
  # else
  #   puts "There is no discount to apply."
  # end
  
def  apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
 
end
  
#--------------------------------------------------------
#returns an array containing all items that have been added

  def items
    @item
  end
  
#--------------------------------------------------------
#subtracts the last item from the total
#returns the total to 0.0 if all items have been removed

def void_last_transaction
  @total -= @last_transaction_amount
end

end

cash_resgister = CashRegister.new