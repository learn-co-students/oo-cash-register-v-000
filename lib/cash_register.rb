class CashRegister
  attr_accessor :total, :discount, :item, :quantity
  @@item = []
  @@price = []
  
  def initialize(discount = 0)
    @total = total
    @discount = discount
    @total = 0
  end
  
  def total
    #@@price.inject(0, :+)
    @total
  end 
  
  def add_item(item, price, quantity = 1)
    @@item << item
    @total = total + price*quantity
  end
  
  def apply_discount(discount)
    if discount > 0
      discounted_total = ((100-discount)/100)*@total
      puts "After the discount, the total comes to #{discounted_total}."
    else
      puts "There is no discount to apply."
    end
  end 
  
  def items
    @@item
  end 
  
  def void_last_transaction
    @@item.pop
    @@price.pop
    total
  end
end
