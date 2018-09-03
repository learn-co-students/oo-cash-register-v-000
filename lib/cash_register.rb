class CashRegister
  attr_accessor :total, :items
  attr_reader :discount, :old_total
  
  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity=1)
    quantity.times {@items << title}
    @old_total = self.total
    self.total += (price * quantity)
    end
  
  def apply_discount
    if @discount == 0 || nil
      return "There is no discount to apply."
    else
      self.total = (self.total - (self.total * (@discount / 100.to_f))).to_i 
      return "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total = @old_total
  end
  
end