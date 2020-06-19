class CashRegister 
  
  attr_accessor :total, :discount, :item, :price, :last_transaction
  
  @@cash_register = 0 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
  end   
  
  def self.total
    @total
  end 
    
  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do 
    @items << item
  end 
    @last_transaction = price * quantity
  end 
  

  def apply_discount
    if @discount > 0
      @total = @total - @total * @discount / 100
      "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end 
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
    @total = @total - @last_transaction
  end 
  
end

