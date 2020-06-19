class CashRegister
  
  attr_accessor :total, :discount, :quantity, :price
  
   def initialize(discount = nil)
    @total = total 
    @total = 0 
    @discount = discount
    @items = []
  end 

  def add_item(title, price, quantity = 0)
    if quantity > 1
      @total = (price * quantity) + @total 
      quantity.times { @items << title }
    else 
      @total = price + @total 
      @items << title
    end 
      @price = price 
    end 
    
  def apply_discount
    if @discount == nil
    return "There is no discount to apply."
  else 
    @total = (@total*((100-@discount))/100)
    return "After the discount, the total comes to $#{@total}."
    end 
  end 

  def items
    return @items 
  end 
  
  def void_last_transaction
    @total -= @price 
  end   
end 

