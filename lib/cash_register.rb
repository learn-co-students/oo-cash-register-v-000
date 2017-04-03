require 'pry'

class CashRegister

  attr_accessor :total, :discount, :last_transaction

  def initialize(emp_dis = 0)
    @cart = []
    @discount = emp_dis
    @total = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity='1')
    quantity.to_i.times do
      @cart << title
    end
    @last_transaction = price * quantity.to_i
    @total += @last_transaction
  end

  def apply_discount
    if @discount > 0
      deduct = @discount * 10
      @total -= deduct
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
