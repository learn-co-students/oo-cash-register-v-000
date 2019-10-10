require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction  
  
  def initialize(discount = 0)
   @total = 0 
   @discount = discount 
   @items = []
   @last_transaction = []
  end 

  def total 
    @total 
  end 
  
  def add_item(title, price, quantity = 1)
    @total = @total + price * quantity
    counter = 0 
    while counter < quantity 
      @items << title 
      counter += 1 
    end 
    @last_transaction = [title, price, quantity]
    
  
  end 
  
  def apply_discount
  if discount != 0 
    @total = @total - (@total * discount/100) 
    "After the discount, the total comes to $" + @total.to_s + "."
  else
    "There is no discount to apply."
  end 
  end 
  
  def items
    @items 
  end 
  
  def void_last_transaction
    sum_of_last_transaction = @last_transaction[1] * @last_transaction[2]
    @total = @total - sum_of_last_transaction 
  end 
  
end 