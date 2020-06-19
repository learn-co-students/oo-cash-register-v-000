require 'pry'
class CashRegister
  
  attr_accessor  :total, :discount, :title, :price, :quantity, :lastItem
  
  @@all = []
  
  def initialize(discount = 0) 
    
    @total = 0 
    @discount = discount
    reset_all
    @lastItem = []
  end 
  
  def total 
    @total
  end 
  
  def add_item(title, price, quantity = 1)
    
    @title = title
    @quantity = quantity
    @price = price
    
    @lastItem << self.title 
    @lastItem << self.price
    @lastItem << self.quantity
    
    @total = @total + (@price * @quantity)
    while quantity > 0
        @@all << self.title 
        quantity = quantity - 1
    end
   end 
  
  def apply_discount 
    if @discount == 0 
       "There is no discount to apply."
    else 
          discounted_total = @discount/100.to_f
          @total = @total - (@total * discounted_total)
      "After the discount, the total comes to $#{@total.to_i}."
    end 
  end 
  
  def items
    all_items = []
    
    @@all.each do |obj| all_items << obj
    end 
    all_items
  end 
  
  def self.all 
    @@all 
  end 
 
  def reset_all 
    @@all.clear 
  end 
  
  def void_last_transaction 
   
    price_last_item = @lastItem[1] * @lastItem[2]
    @total = @total - price_last_item
   
  end 
  
  
end 

