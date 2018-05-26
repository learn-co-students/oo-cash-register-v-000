class  CashRegister 
  
  attr_accessor :total, :discount, :previous_title 
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount 
  end 
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity 
    self.previous_title = price * quantity
    end 
    
 def apply_discount
   if @discount == 0
     return "There is no discount to apply."
     else
      self.total -= (0.01 * @discount * @total).to_i
      return "After the discount, the total comes to $#{self.total}."
     
   end
 end
 

    

 


end 

