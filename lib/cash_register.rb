class CashRegister
  attr_accessor :total, :discount, :items, :the_last_transaction

  def initialize(discount=0)
    @total = 0 
    @discount = discount
    @items = []
  end 

  def add_item(title, price, quantity=1)
    total= self.total += (price * quantity)
    total
    self.the_last_transaction = price * quantity
    quantity.times do 
      items << title
    end 
  end 
  
  def apply_discount 
    if discount != 0 
      self.total = self.total - (self.total * (self.discount)/100) 
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end 
  
  
  def void_last_transaction 
     self.total = self.total - self.the_last_transaction
  end 
  
end 
