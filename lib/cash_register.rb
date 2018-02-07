require'pry'

class CashRegister
  attr_accessor :total, :discount, :items 
  
  
  
  def initialize(i = 0)
    @total = 0
    @discount = i.to_f 
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price *= quantity
    quantity.times do
    @items << title
    end
  end 
 
  def apply_discount
    #binding.pry
    if @discount > 0
    @total -= (@total *= (@discount /= 100))
     "After the discount, the total comes to $#{@total.to_i}."
   else
     "There is no discount to apply."
   end
  end  
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = 0
  end
    
end 


 #def self.create
  #  @total = 0
  #end 
    