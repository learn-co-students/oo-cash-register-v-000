require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :void
  
  def initialize(emp_discount = nil)
    
    @total = 0
    @discount = emp_discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    new_price = (price * quantity)
    @total += new_price
    #quantity.ord 
    quantity.times{self.items << item}  
    # for i in 1..quantity do
    #   self.items << item
    # end
    #binding.pry
    self.void = price
    
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
      
    else
      #@discount != nil
      x = @discount.to_f / 100
      @total = @total - (@total * x)
      #new_total
      "After the discount, the total comes to $#{@total.to_i}."
      #success
    end
  
  end

  def void_last_transaction

     @total = self.total - self.void

    
  end


end
