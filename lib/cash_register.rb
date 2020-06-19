class CashRegister
  
  attr_accessor :total, :discount, :items, :total2
  
  

  def initialize(discount = 0)
    @items = []
    @total = 0 
    @discount = discount 
  end 

  def total 
    @total 
  end 

  def add_item(title, price, quantity = 1)
    @total2 = @total 
    @total = @total + price * quantity
    x = 0 
    while x < quantity  
    @items << title 
    x += 1 
  end 
  end 

  def apply_discount 
    if @discount == 0 
      return "There is no discount to apply."
    end 
    
    @total = @total - (@total * @discount/100)
    return "After the discount, the total comes to $#{@total}."
  end 
  
  def items_list
    @items 
  end 
  
  def void_last_transaction 
    @total = @total2 * (1 - @discount/100)
  end 


end 