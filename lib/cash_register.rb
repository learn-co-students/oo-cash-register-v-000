class CashRegister
  
  attr_accessor :total, :discount, :previous_total, :item_arry  
  
  def initialize(discount=0) 
    @total = 0 
    @discount = discount.to_f  
    @item_array = []
  end
  
  def total 
    @total 
  end
  
  def add_item(title, price, quantity=1)
    @previous_total = @total 
    @total += price.to_f * quantity
    i = 0 
    
    while i < quantity 
      @item_array << title 
      i += 1 
    end
  end
  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else 
      self.total *= 1-@discount/100 
      "After the discount, the total comes to $#{@total.to_i}."
    end 
  end
  
  def void_last_transaction 
    self.total = self.previous_total
  end 
  
  def items 
    @item_array
  end
  
end
