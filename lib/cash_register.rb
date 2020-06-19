  require 'pry'

  class CashRegister

  attr_accessor :total, :employee_discount, :items

  def initialize (employee_discount = nil)
      @total = 0
      @employee_discount = employee_discount
      @items = []
  end

  def total
      @total
  end

  def discount
      @employee_discount
  end

  def add_item(title, price, quantity = 1)
      self.total += price * quantity
      quantity.times do
      items << title
    end
  end

  def apply_discount
    #binding.pry
    if !discount
      "There is no discount to apply."
    else
      @total = @total - (@total * discount/100)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
      self.total=0
  end

 end
