class CashRegister
  
  attr_accessor :discount, :total, :title, :price, :quantity, :prices   
  
  def initialize(discount = 0)
    @discount = discount 
    @total = 0.0
    @title = []
    @prices = []
    
  end
  
  def total
    @total 
  end
  
  def add_item(title, price, quantity = 1)
    total = self.total
    quantity.times do 
      @title << title 
    end
    @prices << price 
    @total = total + (price * quantity)
  end
  
  def apply_discount
    total = self.total
    if @discount == 0 
      string = "There is no discount to apply."
    else 
      discount = (@discount/100.0) * total 
      @total = total - discount
     @total = @total.round 
      string = "After the discount, the total comes to $#{@total}."
    end 
  end 
  
  def items
    @title 
  end 
  
  def void_last_transaction
    @total = @total - @prices.pop 
    
  end 
  
end 
