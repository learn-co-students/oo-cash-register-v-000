class CashRegister
  attr_accessor :total, :discount, :last_transaction
    
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times { @@items << title }
    self.last_transaction = price * quantity
  end
  
  def apply_discount
    if discount > 0
      self.total -= self.total * discount / 100
      return "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @@items
  end
  
  def void_last_transaction
    self.total -= self.last_transaction
  end
      
end