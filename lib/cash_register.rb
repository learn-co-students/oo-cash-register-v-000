require 'pry'
class CashRegister
  attr_accessor :total, :discount

  def initialize(emp_discount = nil)
    
    @total = 0
    @discount = emp_discount
  
  end

  def add_item(title, price, quantity = 1)
    new_price = (price * quantity)
    @total += new_price
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
      
    else
      @discount != nil
      x = @discount.to_f / 100
      @total = @total - (@total * x)
      #new_total
      "After the discount, the total comes to $#{@total.to_i}."
      #success
      
    end
  
  end

end
