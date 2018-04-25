class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end 
  
  def add_item(title, price, quanity = 1)
    i = 0
    while i < quanity
    @items << title
    @prices << price
    i+= 1 
    end 
    self.total += (price * quanity)
  end 
  
  def apply_discount 
    @total = (@total - @discount * 10)
    if @discount != 0
    "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end 
  end 
  
  def items 
    @items
  end 
  
  def void_last_transaction
    @total = @total - @prices[-1]
    
  end 
  
end 
