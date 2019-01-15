class CashRegister
  attr_accessor :total, :employee_discount, :discount

  def initialize(total = 0)
    @total = total
  end
  
  def total
    employee_discount = self.total += 20
  end

  # def add_item

  # end

  # def apply_discount

  # end
  
  # def item

  # end  
  
  # def void_last_transaction

  # end
  
end  


