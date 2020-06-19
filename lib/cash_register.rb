class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction
 
  def initialize(discount = 0) 
    @total = 0
    @discount = discount
    @items = []
   end
  
  def total 
    @total
  end
  
 def add_item(title, price, quantity = 1)
   self.total += (price * quantity)
   quantity.times {@items << title}
   
   @last_transaction = price * quantity
  end
  
  def apply_discount
    if self.discount > 0 
      self.total = total - (total * discount / 100)
      return "After the discount, the total comes to $#{self.total}."
      
    else return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total -= @last_transaction
  end
end