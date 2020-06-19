class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  
  def initialize(discount = 0)
   @total = 0
   @discount = discount
   @items = []
  end
    
  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    self.last_transaction = price*quantity
    quantity.times do
      self.items << title
    end
  end
   
  
  def apply_discount
    self.total *= (1 - (self.discount/100.0)) 
    if self.discount == 0 
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{self.total.round}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total -= self.last_transaction
  end
end
