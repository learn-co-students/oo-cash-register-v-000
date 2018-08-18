
class CashRegister
  require "pry"
  attr_accessor :discount, :total, :last_transaction
  
  def initialize(employee_discount = nil)
    @discount = employee_discount
    @total = 0
    @items = []
  end 
  
  def items
    @items
  end 
  
  
  def add_item(item, price, quantity = nil)
    if quantity != nil
      @total += (quantity * price)
      @items += [item] * quantity.to_i
      @last_transaction = (quantity * price)
    else
      @total += price
      @items << item
      @last_transaction = price
    end 
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end 
  
  def apply_discount()
    if @discount != nil
      @total = @total - (@total * (@discount/ 100.00))
      "After the discount, the total comes to $#{@total.to_i}."
      
    else
      "There is no discount to apply."
    end 
  end 
  
    
  
  
  
end 