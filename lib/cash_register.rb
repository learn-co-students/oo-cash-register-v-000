require 'pry'
class CashRegister

  attr_accessor :items, :discount, :last_transaction, :total

  def initialize(discount = 0)
  @items = []
  @discount = discount 
  @total = 0 
  
  end
 
  
  
  def add_item(title, amount, quantity=1) 
    self.total += amount * quantity              
    quantity.times do
      items << title
      end
    self.last_transaction = amount * quantity  
  end 



   def apply_discount 
      
      if discount  == 0
        
        "There is no discount to apply."
      
      else
        
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      
       "After the discount, the total comes to $#{self.total}."
     
        end 
  
    end


  
  def void_last_transaction 
    self.total = self.total - self.last_transaction # reader method 
    
  end


end

  


