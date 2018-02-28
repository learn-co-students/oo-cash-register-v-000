require'pry'
class CashRegister
  attr_accessor :total, :discount, :last_transaction 


  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @cart = []
  end 
  
  def total 
    @total 
  end 
  
  def add_item(title, price, quantity = 1)
    @last_transaction = (quantity*price) 
    @total += (quantity*price) 
   
    items = {}
    items[:title] = title 
    items[:price] = price 
    items[:quantity] = quantity
    @cart << items 
   end 
     
  def apply_discount
    if @discount > 0
    @total -= (@total.to_f*discount.to_f/100)
    "After the discount, the total comes to $#{@total.to_i}."
    else
    "There is no discount to apply."
    end
  end 
  
  def items
    item_names = []
    @cart.each do |item_info|
      #test expects product name * quantity...
      for qty in 1..item_info[:quantity] 
        item_names << item_info[:title]
      end 
    end 
    item_names
  end 

   #@cart.map{|i| i[:title]* i[:quantity]}
   #binding.pry 
  
  def void_last_transaction
   @total -= @last_transaction
  end
end