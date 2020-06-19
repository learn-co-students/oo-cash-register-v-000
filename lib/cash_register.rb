require 'pry'

class CashRegister
  
  attr_accessor :total, :employee_discount

  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
    @all_items = []
    @trans_count = {}
    @counter = -1
  end
  
  def discount
    @employee_discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do 
      @all_items << title
    end
    @counter += 1
    @trans_count[@counter] = price
  end
  
  def apply_discount
    if @employee_discount > 0
      @total -=  @total * @employee_discount/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @all_items
  end

  def void_last_transaction
    @total -= @trans_count[@counter]
  end

end

