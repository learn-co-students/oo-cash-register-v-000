require "pry"
class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item 
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @last_item = []
  end

  
  def add_item(title, price, quantity = 1)
    @total = @total + (price*quantity)
    
    quantity.times do
      @items << title
    end
    
    @last_item.delete(0)
    @last_item << price
    @last_item
    #binding.pry
  end 
  
    
    
  def apply_discount
    discount = @total*0.20
    discount_total = @total - discount 
    @total = discount_total
    if discount > 0
      "After the discount, the total comes to $#{discount_total.to_i}." 
    else
      "There is no discount to apply."
    end
  end 
  
  def items
    return @items
  end 
  
  def void_last_transaction
    @last_item = @last_item.join
    x = @last_item.to_f
    @total = @total - x
    
  end 
end


