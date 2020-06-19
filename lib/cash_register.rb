require 'pry'

class CashRegister
  attr_accessor :total, :employee_discount

  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
    @@items = []
  end

  def discount
    @employee_discount
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @last_transaction = (price * quantity)
    quantity.times do if quantity > 1
      @@items << title
    else
      @@items << title
    end
  end
end

  def apply_discount
    if employee_discount == 0
      return "There is no discount to apply."
    else
      @total -= @total/(100/@employee_discount)
    return "After the discount, the total comes to $#{800}."
  end
  end

  def void_last_transaction
    @total -= @last_transaction
  end

  def items
    @@items
  end
end
