require 'pry'

class CashRegister
  
  attr_accessor :total
  
  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
    @items = []
    @transactions = []
  end
  
  def discount 
    @employee_discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    subtotal = price * quantity
    @total = @total + subtotal
    items = Array.new(quantity, title)
    @items << items
    @items.flatten!
    @transactions << subtotal
  end
  
  def apply_discount
    if @employee_discount != 0
      @total = (@total * (100 - @employee_discount)) / 100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @total - @transactions[-1]
  end
  
end
