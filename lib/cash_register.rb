require "pry"
class CashRegister
  attr_accessor :cash_resister, :total, :last_transaction 
  attr_reader :items
  def initialize(discount = 0)
  @total = 0
  @cash_register_with_discount = discount
  @items = []
  end
  def discount 
  @cash_register_with_discount
  end 
  
  def total 
  @total
  end 
  def add_item(title,price,quantity = 1)
    if quantity == 1 
      @total += price
      @items << title  
      
    else 
      @total = @total + price*quantity
      quantity.times do 
      @items << title 
    end 
    
    end 
    @last_transaction = price*quantity
  end  
  
  def apply_discount
  if @cash_register_with_discount == 0 
    @total
    "There is no discount to apply."
    
  else 
    @total = @total*(1-@cash_register_with_discount/100.0)
    "After the discount, the total comes to $#{@total.to_i}."
  end
  end 
  def void_last_transaction 
    #binding.pry
    self.total = self.total - self.last_transaction
    
  end 
end 