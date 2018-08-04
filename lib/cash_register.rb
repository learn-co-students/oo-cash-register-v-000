require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items

  
  #set default and optional argument
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    
  end 
  
  def total
    @total
  end 
  
  #default set at 1
  def add_item(title, price, quantity=1)
    quantity.times do 
      @items << title
    end
    @total += (price * quantity)
    @last_item_price = price
  end 
  
  #convert discount to decimal for conversion (i.e. 20 => .2)
  def apply_discount
    if @discount != 0 
      discount_percent = @discount/100.round(2)
      @total -= @total*discount_percent
      after_discount = @total.round
      "After the discount, the total comes to $#{after_discount}."
    else
       "There is no discount to apply."
    end
  end 
  
  
  def items
    @items
  end 
  
  def void_last_transaction
    @total -= @last_item_price
  end 
end 
