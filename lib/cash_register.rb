class CashRegister
  
  attr_accessor :items, :discount, :last_transaction, :total
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      items << title
  end
    self.last_transaction = price * quantity
  end
  
  def apply_discount
    if discount != 0
      self.total -= discount
    end
    "After the discount, the total comes to $#{total}."
  end

  def void_last_transaction
  end

end
    
