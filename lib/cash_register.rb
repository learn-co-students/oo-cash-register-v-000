require 'pry'

class CashRegister

  attr_accessor :total

  @@previous_transaction_value = 0

  def initialize(employee_discount = nil)
    @@items = []
    @total = 0
    if employee_discount == nil
      employee_discount = 0
    end
    @discount = employee_discount
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
  @price = price * quantity
  @total = @total + @price
  @@previous_transaction_value = @price
    quantity.times do
      @@items << item
    end
  end

  def apply_discount
    @total = @total - (@total * @discount/100)
    if @discount == 0 || @discount == nil
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def discount
    @discount
  end

  def items
    @@items
  end

  def void_last_transaction
    @total = @total - @@previous_transaction_value
    @total
  end

end
