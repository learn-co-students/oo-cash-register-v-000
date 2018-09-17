class CashRegister

  attr_accessor :total
  attr_accessor :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    self.total += price*quantity
  end

  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      discount = (100 - @discount).to_f / 100
      self.total *= discount
      return "After the discount, the total comes to $#{@total.to_int}."
    end
  end
  
  def items
    
  end

end