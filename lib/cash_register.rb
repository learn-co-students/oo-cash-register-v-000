require 'pry'

class CashRegister
  attr_accessor :total

  def initialize(employee_discount=nil)
    @total = 0
    @employee_discount = employee_discount
    @items = []
    @last_transaction_price_added = 0
  end

  def items
    @items
  end

  def discount
    @employee_discount
  end

  def add_item(title,price,qty=nil)
    @total_start = @total
    @title = title
    @price = price
    @qty = qty

    if @qty != nil #qty is >= 1
      @total = @total + @qty * @price
      @qty.times do @items << title end
    elsif @qty == 0
      @total = @total + @qty * @price
      @items << @title
    else
      @total = @total + @price
      @items << @title
    end
  end

  def apply_discount
    if @employee_discount == nil
      return "There is no discount to apply."
    else
      @total = @total * ((100 - @employee_discount)/100.0)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total = @total_start
  end
end
