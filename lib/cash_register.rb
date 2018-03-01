class CashRegister

  attr_accessor :discount, :total

  # def employee_discount=(employee_discount)
  #   @employee_discount = employee_discount
  # end
  #
  # def employee_discount
  #   @employee_discount
  # end

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    @title = title
  end

  def apply_discount
    if discount == 0
       "There is no discount to apply."
    else
        self.total = total - (total * discount/100)
        "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    
  end


end
