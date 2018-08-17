class CashRegister
  attr_accessor :total, :items, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = items

   
  end

  def add_item(title, price, quantity=1)
     @total += (price*quantity)
  end
  
  def apply_discount
   if self.discount != 0 
     self.total -= self.total.to_i*self.discount.to_i/100 
     "After the discount, the total comes to $#{self.total}."
   end
 end
   
  
end
