require 'pry'

class CashRegister
  attr_accessor :total, :price, :title, :last_item
  @@items = []
  
  def initialize(discount= 0)
    @@items.clear
    @total = 0
    @discount = discount
    
  end
  
  def discount
    @discount
  end  
  
  def add_item(title, price, quantity= 1)
    @total = @total + (price * quantity.to_i)
    counter = 0
    while counter < quantity
      @@items << title
      counter += 1 
    end  
    
    #for voided transactions
    @last_item_price = price * quantity.to_i
    @last_item = title
  end
  
  def apply_discount
    if @discount.to_i == 0 
      "There is no discount to apply."
    else
      @total = @total - (@total * (@discount.to_i * 0.01))
      "After the discount, the total comes to $#{@total.round}."
    end
  end 
  
  def void_last_transaction
    @@items.delete_if {|x| x == @last_item}
    @total = @total - @last_item_price
  end
  
  
end  
  
