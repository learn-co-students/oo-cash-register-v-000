class CashRegister
  attr_accessor :total, :discount, :item
  @@item = []
  @@price = []
  
  def initialize(total = 0, discount = 0)
    @total = total
  end
  
  def total
    @@price.inject(0, :+)
  end 
  
  def add_item(item, price)
    @@item << item
    @@price << price
    total
  end
  
  def apply_discount
    discounted_total = total*(100-discount)
    discounted_total
  end 
  
  def items
    @@item
  end 
  
  def void_last_transaction
  end
  
end
